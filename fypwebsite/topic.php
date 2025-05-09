<!-- topic.php -->
<?php
$topic = $_GET['topic'] ?? 'Unknown Topic';
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $topic; ?></title>
    <meta name="viewport" content="with=device-width, initial-scale=1.0"> <!--This is for responsiveness-->

    <link rel = "stylesheet" href= "style.css">  <!-- Comment: this is referring to the css -->

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body>
<section class = "header">
    
    <nav>
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
    <div class="containtopic">
        <h1 class="topicname">>  <?php echo htmlspecialchars($topic); ?></h1>
    </div>


    <div id="topictweak" class = "topictweak">
        <p>Forces are pushes or pulls that cause objects to move, stop, change direction, or change shape. They are present in everyday actions, like when you push open a door, pull a drawer, or kick a ball. Even the simple act of walking involves forces, as your feet push against the ground to move you forward. </p><br><br>
        <p>Please take a quiz to assess your knowledge level before you start learning.</p>

        <!-- <a href="study.php?topic --->
        <a href="firstquiz.php?topic=<?php echo urlencode($topic); ?>" class="topicname-btn"> START NOW </a><a href="mainpage.php" class="topicname-btn">Back to Home</a>
        <!--<a href="quiz.html?topic=<?php echo urlencode($topic); ?>" class="topicname-btn">I want to take quiz</a>-->
        
    </div>
</section>
</body>
</html>
