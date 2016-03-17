<?php

error_reporting(E_ERROR);
require_once '../php-vendor/autoload.php';
include 'base_url.php';

$uploadsDir = 'uploads/';

$handle = new upload($_FILES['file']);
if ($handle->uploaded) {
    //$handle->file_new_name_body   = 'image_resized';
    $handle->file_name_body_pre   = 'thumb_';
    $handle->file_safe_name       = true;
    $handle->file_overwrite       = true;
    $handle->image_resize         = true;
    $handle->image_x              = 300;
    $handle->image_y              = 300;
    $handle->image_ratio_crop     = true;
    $handle->process($_SERVER['DOCUMENT_ROOT'].'/'.$uploadsDir);
    if ($handle->processed) {
        $answer = array('answer' => 'File transfer completed', 'path' => base_url(TRUE).$uploadsDir.$handle->file_dst_name);
        $handle->clean();
    } else {
        $answer = array('error' => $handle->error);
    }
} else {
    $answer = array('error' => 'No files passing');
}
print json_encode($answer);