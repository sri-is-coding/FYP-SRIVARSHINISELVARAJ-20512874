<!-- topic.php -->
<?php
$topic = $_GET['topic'] ?? 'Unknown Topic';
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo $topic; ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="topic.css">

    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;700&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
</head>
<body class="bodyb">
<section class="sub-headerblog">
    <nav>
        <div class="nav-links" id="navLinks">
            <i class="fa fa-times" onclick="hideMenu()"></i>
            <ul>
                <li><a href="mainpage.html">HOME</a></li>
                <li><a href="#tweak">QUIZ</a></li>
                <li><a href="#course">UPLOAD</a></li>
                <li><a href="login.html">LOGIN</a></li>
                <li><a href="about.html">ABOUT</a></li>
            </ul>
        </div>
        <i class="fa fa-bars" onclick="showMenu()"></i>
    </nav>
</section>

<section class="blog-content">
    <div class="topic-container">
        <div class="topic-left">
            <h1 class="topic-title">> <?php echo htmlspecialchars($topic); ?></h1>
            <p class="topic-description">
                Forces are pushes or pulls that cause objects to move, stop, change direction, or change shape. They are present in everyday actions, like when you push open a door, pull a drawer, or kick a ball. Even the simple act of walking involves forces, as your feet push against the ground to move you forward.
            </p>
            <p class="topic-description">
                Please take a quiz to assess your knowledge level before you start learning.
            </p>
            <a href="firstquiz.php?topic=<?php echo urlencode($topic); ?>" class="topic-btn">START NOW</a>
            <a href="mainpage.php" class="topic-btn">Back to Home</a>
        </div>
        <div class="topic-right">
            <img src="force.jpg" alt="Forces Image">
        </div>
    </div>
</section>

</body>
</html>
