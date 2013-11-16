<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
require_once 'config.php';

require_once DIR.'class.quantri.php';
$qt = new quantri();

require_once(DIR.'class.form.php');
$form = new form();


require(DIR.'class.sql.php');
$sql = new sql();

if(!empty($_POST)) {
	$field = array_keys($_POST);
	echo '<pre>';
	print_r($field);
	echo '</pre>';
	
	$value = array_values($_POST);
	echo '<pre>';
	print_r($value);
	echo '</pre>';
	

	$table = 'baiviet';
	$id = '1';
//	$qr = "UPDATE `{$table}` SET `delete`=1 WHERE `id`='{$id}'";
//	mysql_query($qr) or ($loi = $errors[4]);
//	echo $loi;
	
	$sql->get_sql(1,$table,$field,$value,1);
	$zzz = $sql->executable();
	echo '<pre>';
	print_r($zzz);
	echo '<pre>';
	$m = explode('_ac', $p);
	if( count($m) >0 ) echo "baiviet"; else echo "baiviet_ac";
}
		
?>
<p>     
<form action="" method="post" name="form1">
<input type="text" name="name" /><br />
<input type="text" name="name_rewrite" /><br />
<input type="text" name="date_create" /><br />
<input type="text" name="date_update" /><br />
<input type="text" name="user_create" /><br />
<input type="text" name="user_update" /><br />
<input type="text" name="status" /><br />
<input type="submit" name="submit" value="Gui" />
<input type="submit" name="cancel" value="Huy" />
</form>



</p>
</body>
</html>