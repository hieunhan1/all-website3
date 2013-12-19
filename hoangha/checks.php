<?php
if(!@$_GET['lang']) $lang = 'vi';
else $lang = $_GET['lang'];

include_once("languages/{$lang}.php");
include_once('config.php');

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<table width="1000">
	<tr>
    	<td>
        	<?php
			$qr = mysql_query("SELECT * FROM forum_users WHERE id=58");
			$row = mysql_fetch_array($qr);
			echo '<pre>';
			print_r($row);
			echo '</pre>';
			?>
        </td>
        <td>
        	<?php
			$qr = mysql_query("SELECT * FROM forum_users WHERE id=66");
			$row = mysql_fetch_array($qr);
			echo '<pre>';
			print_r($row);
			echo '</pre>';
			?>
        </td>
    </tr>
</table>



</body>
</html>