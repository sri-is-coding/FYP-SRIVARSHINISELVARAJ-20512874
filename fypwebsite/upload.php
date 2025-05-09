<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_FILES['pdfFile'])) {
    $targetDir = "uploads/";
    if (!file_exists($targetDir)) {
        mkdir($targetDir, 0777, true); // Create folder if not exist
    }

    $fileName = basename($_FILES["pdfFile"]["name"]);
    $targetFilePath = $targetDir . $fileName;

    if (move_uploaded_file($_FILES["pdfFile"]["tmp_name"], $targetFilePath)) {
        echo "PDF uploaded successfully.";
    } else {
        echo "Failed to upload PDF.";
    }
} else {
    echo "No file received.";
}
?>