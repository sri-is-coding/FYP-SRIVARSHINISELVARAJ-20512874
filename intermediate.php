<?php
$topic = $_GET['topic'] ?? 'Unknown Topic';
?>
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
<section class = "sub-header">
    <nav>
        <a href="mainpage.php"><img src = "logo.png"></a>
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
    <h1 style="font-size: 40px; font-weight: 500;">Intermediate Level : <?php echo htmlspecialchars($topic); ?></h1>

</section>

<!------- COURSES CONTENT -------
    <h1 style="font-size: 30px; font-weight: 500;"> Topic Name: <?php echo htmlspecialchars($topic); ?> </h1>-->

<section class = "course">
    <h3 style="text-align: left; color:white;"> This is the Intermediate level of learning of this topic. Here you can find materials, that you can do revision with.<br>After revising click on the button below to go to the next level!</h3>

    <div class="row">
        <div class="course-col">
            <h3>Click the button below to learn more about your topic.</h3>
            <a href="hardforces.pdf" target="_blank" class="study-btn"> Study the topic now! </a><br><br>
            <h3>Click the button below to proceed to the Expert level.<br>You will be evaluated again and can only proceed to Expert level if your score is above 9.</h3>
            <a href="hardevalquiz.php?topic=<?php echo urlencode($topic); ?>" class="study-btn"> Proceed </a>
        </div>
    </div>

</section>

<!--    Footer   -->
<section class="footer">
    <p>If you are stuck, contact us at email123@gmail.com</p>

    <div class="icons">
        <i class="fa-brands fa-facebook"></i>
        <i class="fa-brands fa-twitter"></i>
        <i class="fa-brands fa-instagram"></i>
        <i class="fa-brands fa-linkedin"></i> 
    </div>

    <p>Made by Srivarshini Selvaraj 2025</p>
    
</section>




<!--

<h2> question: What Can JavaScript Do?</h2>
<p1 id="ithudemo">JavaScript can change the style of an HTML element.</p1>
<button type="button" onclick="document.getElementById('ithudemo').style.fontSize='35px'">Click Me!</button>


<p3> This is a painting</p3>
<p11 id="demo" style="display:none">Of your apatha!</p11>
<button type="button" onclick="document.getElementById('demo').style.display='block'">Click Me!</button>
<p id="demo"></p>


<img src="img_girl.jpg" alt="Girl with a jacket" width="500" height="600">
<p style="color:red;">This is a red paragraph.</p>
<p title="This is called a tooltip">When I hover over this paragraph, you will get a box.</p>

<script>
document.getElementById("demo").innerHTML = "My First JavaScript";
</script>

-->



 <!----- JavaScript for Toggle Menu ---i think js is embedded inside here-->
<script>

    var navLinks = document.getElementById("navLinks");

    function showMenu(){
        navLinks.style.right = "0";
    }
    function hideMenu(){
        navLinks.style.right = "-200px";
    }


</script>


</body>
</html>