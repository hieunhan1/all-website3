<?php
session_start();
$path = "public/temp/";

$arr_url_hinh = explode(',', $_SESSION['upload_image']);
$total_url_hinh = count($arr_url_hinh);
if($total_url_hinh != 4){
	$valid_formats = array("jpg", "png", "gif", "bmp");
	if(isset($_POST) and $_SERVER['REQUEST_METHOD']=="POST"){
		$name = $_FILES['photoimg']['name'];
		$size = $_FILES['photoimg']['size'];
			
		if(strlen($name)){
			list($txt, $ext) = explode(".", $name);
			if(in_array(strtolower($ext),$valid_formats)){
				if($size<(1024*1024*2)){
					$actual_image_name = date('ymd-his').".".$ext;
					$tmp = $_FILES['photoimg']['tmp_name'];
					if(move_uploaded_file($tmp, $path.$actual_image_name)){
						if($_SESSION['upload_image']==1) $_SESSION['upload_image'] = $actual_image_name;
						else $_SESSION['upload_image'] = $_SESSION['upload_image'].','.$actual_image_name;
						
						$arr_url_hinh = explode(',',$_SESSION['upload_image']);
						
						if(count($arr_url_hinh)!=4){
							echo '<img src="'.$path.$actual_image_name.'" class="preview" />';
						}else{
							echo '<img src="'.$path.$actual_image_name.'" class="preview" /> <script> $(document).ready(function(){ $("#imageform").hide(); })</script>';
						}
					}else echo "failed";
				}else echo "Image file size max 2 MB";					
			}else echo "Invalid file format..";	
		}else echo "Please select image..!";
		exit;
	}
}else{
	echo '<img src="'.$path.$_SESSION['upload_image'].'" class="preview" /><script> $(document).ready(function(){ $("#imageform").hide(); })</script>';
}
?>