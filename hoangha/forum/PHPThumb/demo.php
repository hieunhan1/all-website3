<?php
    require_once 'ThumbLib.inc.php';
    $filename = 'images/Koala.jpg';
    $thumb = PhpThumbFactory::create($filename);
    
    //$thumb->resize(200, 200);
    //$thumb->resizePercent(50);
    //$thumb->adaptiveResize(200,200);
    //$thumb->cropFromCenter(400,200);
    //$thumb->crop(100,100,400,250);
    //$thumb->rotateImage('CW'); // CVV
    //$thumb->rotateImageNDegrees(-135);
    //$thumb->show();
	
	//250 x 190
    
    $thumb->adaptiveResize(200,200);
    $newFile = 'images/GauCon.jpg';
    $thumb->save($newFile);
