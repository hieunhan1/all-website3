<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<?php
if(file_exists('public/temp/'.$_SESSION['upload_image'])){
	echo 1;
}else echo 0;

echo '<br /> '.'public/temp/'.$_SESSION['upload_image'];


?>

</body>
</html>