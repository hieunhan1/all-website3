<?php
session_start();
include_once('config.php');

$path 		 = 'public/temp/';
$path_avarta = 'public/avarta/';

if(@$_SESSION['idUser']){
	$valid_formats = array("jpg", "png", "gif", "bmp");
	if(isset($_POST) and $_SERVER['REQUEST_METHOD']=="POST"){
		$name = $_FILES['photoimg']['name'];
		$size = $_FILES['photoimg']['size'];
			
		if(strlen($name)){
			list($txt, $ext) = explode(".", $name);
			if(in_array(strtolower($ext),$valid_formats)){
				if($size<(1024*1024*2)){
					$url_hinh = date('ymd-his').".".$ext;
					$tmp = $_FILES['photoimg']['tmp_name'];
					if(move_uploaded_file($tmp, $path.$url_hinh)){
						/*upload anh*/
						require_once('class/SimpleImage.php');
						$image = new SimpleImage();
						$image->load($path.$url_hinh);
						
						$image->resizeToWidth(200);
						$image->save($path_avarta.$url_hinh);
						
						/*require_once('PHPThumb/ThumbLib.inc.php');
						$thumb = PhpThumbFactory::create();
						$thumb->adaptiveResize(150,150);
						$thumb->save($path_avarta.$url_hinh);*/
						
						unlink($path.$url_hinh);
						if($_SESSION['avarta_forum'] != '') unlink($path_avarta.$_SESSION['avarta_forum']);
						
						mysql_query("UPDATE `forum_users` SET `avarta`='{$url_hinh}' WHERE `delete`=0 AND id='".$_SESSION['idUser']."' ");
						
						$_SESSION['avarta_forum'] = $url_hinh;
						
						echo '<img src="'.$path_avarta.$url_hinh.'" height="150" /> <script> $(document).ready(function(){ $("#imageform").hide(); })</script>';
					}else echo "failed";
				}else echo "Image file size max 2 MB";					
			}else echo "Invalid file format..";	
		}else echo "Please select image..!";
		exit;
	}
}
?>