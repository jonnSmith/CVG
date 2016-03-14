<?php

require_once '../php-vendor/dompdf/autoload.inc.php';

$postdata = file_get_contents("php://input");
$request = json_decode($postdata);

$html = isset($request->html) ? $request->html : '<h2 style="border-radius:5px;background: #000;color:#FFF;">hello world</h2><input type="text" placeholder="test" value="test"/>';
$filename = isset($request->filename) ? $request->filename : 'CV.pdf';
$pdfDir = '/pdf/';

$filepath = $_SERVER['DOCUMENT_ROOT'].$pdfDir.$filename;

use Dompdf\Dompdf;
$dompdf = new Dompdf();
$dompdf->loadHtml($html);
$dompdf->setPaper('A4', 'landscape');
$dompdf->render();

$output = $dompdf->output();
file_put_contents($filepath, $output);

$answer = array('answer' => 'PDF generated', 'path' => $pdfDir.$filename);
print json_encode($answer);