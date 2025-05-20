<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="with=device-width, initial-scale=1.0"> <!--This is for responsiveness-->

    <title>edusriquizwebsite</title>

    <link rel = "stylesheet" href= "style.css">  <!-- Comment: this is referring to the css -->

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>

<body>
<section class = "header">
    <nav>
        <a href="mainpage.html"><img src = "logo.png"></a>
        <div class = "nav-links" id="navLinks">
            <i class="fa fa-times" onclick="hideMenu()"></i> <!-- This part is for the cross icon-->
            <ul>
                <li><a href = "mainpage.html">HOME</a></li>
                <li><a href = "#tweak">QUIZ</a></li>   <!--about page works-->
                <li><a href = "#course">UPLOAD</a></li>
                <li><a href = "login.html">LOGIN</a></li>
                <li><a href = "about.html">ABOUT</a></li>
            </ul>
        </div>
        <i class="fa fa-bars" onclick="showMenu()"></i>  <!--This is for menu button-->
    </nav>

<div class="text-box">
    <h1> Welcome Students!</h1>
    <h3>A personalized learning experience for Year 8 Science subjects.</h3><br>
    <a href="#tweak" class="hero-btn">Hi! You can start here to learn your subject.</a>
    
</div>
</section>

<div id="tweak" class="tweak">
    <h1 id="tweak"> Secondary Physics </h1><br>
    <p style="color: whitesmoke; text-align: left;">    Click your favourite topic to start the learning.</p><br>
    <h2 style="color: whitesmoke; text-align: left;">      Given topics </h2> <br>
    <a href="topic.php?topic=Energy" class="topics-btn">Energy</a>
    <a href="topic.php?topic=Atoms and Molecules" class="topics-btn">Atoms and molecules</a>
    <a href="topic.php?topic=Forces" class="topics-btn">Forces</a>
    <a href="" class="topics-btn">Thermodynamics</a>

    <script>
    function startQuiz(topic) {
        // Redirect to a quiz page and pass topic as query param
        window.location.href = `quiz.html?topic=${encodeURIComponent(topic)}`;
    }
    </script>

    <!--<button onclick="goToQuiz()">St</button>
    <script>
        function goToQuiz() {
            window.location.href = "quiz.html";
        }
    </script>-->
    <!--<form action="stuTest.php" method="get" class="topics-btn">
    <a href="stuTest.php" class="topics-btn">Wanna starta qui</a>
    <button type="submit"> wanna Start Quiz ????????</button>-->


</div>

<div id="study" class="study">
    <h1 id="study">  Topics available for Studying</h1><br>
    <p style="color: whitesmoke; text-align: left;">  Clicking a topic would open that topic's contents.</p><br>
    <h2 style="color: whitesmoke; text-align: left;">  Secondary Physics </h2> <br>

    <?php
    $dir = "uploads/";
    if (is_dir($dir)) {
        $files = scandir($dir);
        foreach ($files as $file) {
            if (pathinfo($file, PATHINFO_EXTENSION) == "pdf") {
                $topic = pathinfo($file, PATHINFO_FILENAME);
                echo "<a href='uploads/$file' class='topics-btn' target='_blank' style='margin: 6px;'>" . htmlspecialchars($topic) . "</a>";
            }
        }
    }
    ?>
    <br><br>
    <!--
    <a href="topic.php?topic=Energy" class="topics-btn">Energy</a>
    <a href="topic.php?topic=Atoms and Molecules" class="topics-btn">Atoms and molecules</a>
    <a href="topic.php?topic=Forces" class="topics-btn">Forces</a>  --->
  
</div>

<!------- Courses -------->
<section id="course" class="course">

    <h1> Upload materials </h1>
    <p> Upload materials below for quiz generation. Refresh the page after uploading.</p><br>

    <!--<form id="uploadForm">
        <input type="text" id="topic" placeholder="Enter topic nameyyy" required>
        <textarea id="studyMaterial" placeholder="Enter study content" required></textarea>
        <button type="submit">Upload</button>
    </form> -->
    <form id="uploadForm" action="upload.php" method="POST" enctype="multipart/form-data">
        <input type="text" name="topic" placeholder="Enter topic name" required>
        <input type="file" name="pdfFile" accept=".pdf" required>
        <button type="submit">Upload PDF</button>
    </form>

    
    <!--
    <script>
    document.getElementById("uploadForm").onsubmit = function(event) {
        event.preventDefault();
        let topic = document.getElementById("topic").value;
        let content = document.getElementById("studyMaterial").value;
        
        localStorage.setItem(topic, content); // Temporary storage
        alert("Study material uploaded!");
    };
    </script> 
    -->

    <div class="container">

    </div>

</section>


<!--    Footer   -->

<section class="footer">
    <div class="icons">
        <i class="fa-brands fa-facebook"></i>
        <i class="fa-brands fa-twitter"></i>
        <i class="fa-brands fa-instagram"></i>
        <i class="fa-brands fa-linkedin"></i> 
    </div>

    <p>Made by Srivarshini Selvaraj 2025</p>
    
</section>



 <!----- JavaScript for Toggle Menu ---i think js is embedded inside here-->
<script>

    var navLinks = document.getElementById("navLinks");

    function showMenu(){
        navLinks.style.right = "0";
    }
    function hideMenu(){
        navLinks.style.right = "-200px";
    }
    
   document.querySelector('.hero-btn').addEventListener('click', function (e) {
    e.preventDefault(); // Prevent default jump behavior

    const targetId = this.getAttribute('href'); // Get the target section ID
    const targetSection = document.querySelector(targetId); // Find the target section

    // Calculate the target position
    const targetPosition = targetSection.offsetTop;
    const startPosition = window.pageYOffset;
    const distance = targetPosition - startPosition;
    const duration = 1000; // Animation duration in milliseconds
    let startTime = null;

    // Animation function
    function animation(currentTime) {
      if (startTime === null) startTime = currentTime;
      const timeElapsed = currentTime - startTime;
      const run = ease(timeElapsed, startPosition, distance, duration);
      window.scrollTo(0, run); // Scroll to the calculated position
      if (timeElapsed < duration) requestAnimationFrame(animation); // Continue animation
    }

    // Easing function for smooth animation
    function ease(t, b, c, d) {
      t /= d / 2;
      if (t < 1) return (c / 2) * t * t + b;
      t--;
      return (-c / 2) * (t * (t - 2) - 1) + b;
    }

    // Start the animation
    requestAnimationFrame(animation);
  });

  // Function to handle smooth scrolling
  function smoothScroll(targetId) {
    const targetSection = document.querySelector(targetId); // Find the target section

    // Calculate the target position
    const targetPosition = targetSection.offsetTop;
    const startPosition = window.pageYOffset;
    const distance = targetPosition - startPosition;
    const duration = 1000; // Animation duration in milliseconds
    let startTime = null;

    // Animation function
    function animation(currentTime) {
      if (startTime === null) startTime = currentTime;
      const timeElapsed = currentTime - startTime;
      const run = ease(timeElapsed, startPosition, distance, duration);
      window.scrollTo(0, run); // Scroll to the calculated position
      if (timeElapsed < duration) requestAnimationFrame(animation); // Continue animation
    }

    // Easing function for smooth animation
    function ease(t, b, c, d) {
      t /= d / 2;
      if (t < 1) return (c / 2) * t * t + b;
      t--;
      return (-c / 2) * (t * (t - 2) - 1) + b;
    }

    // Start the animation
    requestAnimationFrame(animation);
  }

  // Add event listeners to navigation links
  document.querySelectorAll('nav a').forEach(link => {
    link.addEventListener('click', function (e) {
      const targetId = this.getAttribute('href'); // Get the target section ID
      if (targetId.startsWith('#')) { // Check if it's an anchor link
        e.preventDefault(); // Prevent default jump behavior
        smoothScroll(targetId); // Call the smooth scroll function
      }
    });
  });

</script>



</body>
</html>