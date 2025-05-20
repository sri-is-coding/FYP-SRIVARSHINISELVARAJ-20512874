<?php
$topic = $_GET['topic'];
$filepath = "materials/" . $topic . ".pdf";
?>

<!DOCTYPE html>
<html>
<head>
  <title><?php echo htmlspecialchars($topic); ?> - Study</title>
</head>
<body>
  <h2><?php echo htmlspecialchars($topic); ?></h2>

  <?php if (file_exists($filepath)) : ?>
    <iframe src="<?php echo $filepath; ?>" width="100%" height="600px"></iframe>
  <?php else: ?>
    <p>Material not available.</p>
  <?php endif; ?>
</body>
</html>
