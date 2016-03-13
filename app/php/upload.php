<?php
if (!empty($_FILES)) {
    $tempPath = $_FILES['file']['tmp_name'];
    $uploadPath =  $_SERVER['DOCUMENT_ROOT'].'/uploads/' . $_FILES['file']['name'];
    move_uploaded_file($tempPath, $uploadPath);
    $answer = array('answer' => 'File transfer completed', 'path' => $uploadPath);
    $json = json_encode($answer);
    print $json;
} else {
    print 'No files';
}