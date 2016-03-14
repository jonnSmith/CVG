<?php

$uploadsDir = '/uploads/';

if (!empty($_FILES)) {
    $tempPath = $_FILES['file']['tmp_name'];
    $uploadPath =  $_SERVER['DOCUMENT_ROOT'].$uploadsDir. $_FILES['file']['name'];
    move_uploaded_file($tempPath, $uploadPath);
    $answer = array('answer' => 'File transfer completed', 'path' => $uploadsDir. $_FILES['file']['name']);
    print json_encode($answer);
} else {
    $answer = array('error' => 'No files passing');
    print json_encode($answer);
}