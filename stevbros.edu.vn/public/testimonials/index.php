<?php
session_start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Testimonials</title>
<style type="text/css">

#header{height:150px; margin-bottom:10px}
#header img{float:left}

.txt{line-height:22px; height:22px; padding:0 5px; color:#666; width:300px; font-family:Arial, Helvetica, sans-serif; background:none; border:solid 1px #BBB}
.txtarea{line-height:20px; width:300px; height:200px; padding:5px; color:#666; resize:none; font-family:Arial, Helvetica, sans-serif; background:none; border:solid 1px #CCC}
.btn{padding:5px 35px; color:#555}

</style>
</head>

<body>

<div style="width:500px; margin:auto">
    <div id="header">
        <img src="http://www.stevbros.com/images/logo_stevbros.png" alt="stevbros" />
        <img src="http://www.stevbros.com/images/logo_pmi.png" alt="pmi" style="margin:12px 0 0 50px" />
    </div>
    <?php
	$message = 'Stevbros xin chân thành cảm ơn ý kiến của quý khách hàng!';
	if(!isset($_SESSION['check_testimonials'])){
		if(isset($_POST['submit'])){
			include_once('../../class/functions.php');
			include_once('../../class/class.trangchu.php');
			$tc = new trangchu();
		
			$name = str_replace("'","&#39;",$_POST['name']);
			$title = str_replace("'","&#39;",$_POST['title']);
			$company = str_replace("'","&#39;",$_POST['company']);
			$content = str_replace("'","&#39;",$_POST['content']);
			$name_alias = changeTitle("{$_POST['name']} {$_POST['title']}");
			$date = date('Y-m-d H:i:s');
			if($name!='' && $title!='' && $content!=''){
				$sql = "INSERT INTO `info` (`name`, `name_rewrite`, `description`, `content`, `date_create`, `status`, `metaKeyword`, `lang`, `menu_id`, `user_create`, `delete`) VALUES ('{$name} - {$title}', '{$name_alias}', '{$company}', '{$content}', '{$date}', '0', '{$name},{$title}', 'vi', ',32,', 'khachhang', '0') ";
				if(mysql_query($sql)){
					$_SESSION['check_testimonials'] = 1;
					echo $message;
				}
			}
		}else{
		?>
			<form action="" method="post" name="form">
			<table width="100%" border="0" cellpadding="0" cellspacing="10" style="color:#666">
				<tr>
				  <td colspan="2">Stevbros là ủy quyền đào tạo toàn cầu của Viện Quản Lý Dự Án Hoa Kỳ PMI (Global PMI R.E.P)</td></tr>
				<tr>
					<td width="70" align="right">Tên</td>
					<td><input type="text" name="name" value="<?php echo $_POST['name'];?>" class="txt" /></td>
				</tr>
				<tr>
					<td width="70" align="right">Chức vụ</td>
					<td><input type="text" name="title" value="<?php echo $_POST['title'];?>" class="txt" /></td>
				</tr>
				<tr>
					<td width="70" align="right">Công ty</td>
					<td><input type="text" name="company" value="<?php echo $_POST['company'];?>" class="txt" /></td>
				</tr>
				<tr>
					<td align="right" valign="top">Nội dung</td>
					<td><textarea name="content" class="txtarea"><?php echo $_POST['content'];?></textarea></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td><input type="submit" name="submit" value="Submit" class="btn" /></td>
				</tr>
			</table>
			</form>
		<?php }//end submit
	}else echo $message;?>
</div>

</div>

</body>
</html>