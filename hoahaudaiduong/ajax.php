<?php
session_start();
$lang = 'vi';
include_once('config.php');

if($_POST['contact']=='contact'){
	$name = trim($_POST['name']);
	$email = trim($_POST['email']);
	$phone = trim($_POST['phone']);
	$diachi = trim($_POST['diachi']);
	$message = trim($_POST['message']);
	
	if($name!='' && $email!='' && $phone!='' && $message!=''){
		if($tc->insert_contact($name,$email,$phone,$diachi,$message)){
			echo '1';
			include_once('sendmail_smtp/sendmail.php');
			return true;
		}else{
			echo '0';
			return false;
		}
	}else{
		echo '0';
		return false;
	}
}

if($_POST['dangky_tructuyen']=='dangky_tructuyen'){
	$name = trim($_POST['name']);
	$ngaysinh = trim($_POST['ngaysinh']);
	$noisinh = trim($_POST['noisinh']);
	$chieucao = trim($_POST['chieucao']);
	$cannang = trim($_POST['cannang']);
	$sodo = trim($_POST['sodo']);
	$cmnd = trim($_POST['cmnd']);
	$ngaycap = trim($_POST['ngaycap']);
	$noicap = trim($_POST['noicap']);
	$hokhau = trim($_POST['hokhau']);
	$choohientai = trim($_POST['choohientai']);
	$dienthoai = trim($_POST['dienthoai']);
	$email = trim($_POST['email']);
	$trangmang_xh = trim($_POST['trangmang_xh']);
	$nghenghiep = trim($_POST['nghenghiep']);
	$noicongtac = trim($_POST['noicongtac']);
	$trinhdo = trim($_POST['trinhdo']);
	$ngoaingu = trim($_POST['ngoaingu']);
	$sothich = trim($_POST['sothich']);
	$metaDescription = trim($_POST['metaDescription']);
	$kenh_timkiem = trim($_POST['kenh_timkiem']);
	$other2 = trim($_POST['other2']);
	$other3 = trim($_POST['other3']);
	$other4 = trim($_POST['other4']);
	
	$arr_url_hinh = explode(',', $_SESSION['upload_image']);
	$total_url_hinh = count($arr_url_hinh);
	
	//$url_hinh = $_SESSION['upload_image'];
	
	if($name!='' && $total_url_hinh=='4' && $ngaysinh!='' && $chieucao!='' && $cannang!='' && $sodo!='' && $cmnd!='' && $hokhau!='' && $dienthoai!='' && $email!='' && $nghenghiep!='' && $trinhdo!='' && $sothich!='' && $metaDescription!=''){
		$ngaysinh = explode('/',$ngaysinh); $ngaysinh = "{$ngaysinh[2]}-{$ngaysinh[1]}-{$ngaysinh[0]}";
		$ngaycap = explode('/',$ngaycap); $ngaycap = "{$ngaycap[2]}-{$ngaycap[1]}-{$ngaycap[0]}";
		$date = date('Y-m-d H:i:s');
		
		$sdb = mysql_num_rows(mysql_query("SELECT id FROM thisinh"));
		
		include_once('class/functions.php');
		$name_rewrite = change_alias($name)."-{$sdb}";
		
		$path_temp = "public/temp/";
		
		$qr = "INSERT INTO `thisinh` VALUES (NULL, '{$name}', '{$name_rewrite}', '{$name_rewrite}-1.jpg', '{$metaDescription}', '{$name}', '{$sdb}', '{$ngaysinh}', '{$noisinh}', '{$chieucao}', '{$cannang}', '{$sodo}', '{$cmnd}', '{$ngaycap}',  '{$noicap}', '{$hokhau}', '{$choohientai}', '{$dienthoai}', '{$email}', '{$trangmang_xh}', '{$nghenghiep}', '{$noicongtac}', '{$trinhdo}', '{$ngoaingu}', '{$kenh_timkiem}', '{$sothich}', '', '{$other2}', '{$other3}', '{$other4}',  '0', 'vi', ',6,19,', '0', '{$date}', '{$date}', 'khachhang', NULL , '0') ";
		
		if(mysql_query($qr)){
			$id = mysql_insert_id();
			
			require_once('class/SimpleImage.php');
			$image = new SimpleImage();
			
			for($i=0; $i<=3; $i++){
				mysql_query("INSERT INTO `thisinh_images` VALUES (NULL,'{$id}','{$name} {$i}','{$name_rewrite}-{$i}.jpg','vi','1','{$date}','{$date}','khachhang','','0') ");
				/*upload anh*/
				$image->load($path_temp.$arr_url_hinh[$i]);
				
				$image->resizeToWidth(1000);
				$image->save(url_thisinh_image.$name_rewrite."-{$i}.jpg");
				
				$image->resizeToWidth(200);
				$image->save(url_thisinh_image_thumb.$name_rewrite."-{$i}.jpg");
				
				unlink($path_temp.$arr_url_hinh[$i]);
				
				$url_hinh_view .= '<img src="http://www.hoahaudaiduongvietnam.com/'.url_thisinh_image_thumb.$name_rewrite.'-'.$i.'.jpg" width="190" />';
				$url_hinh_name .= '<a href="http://www.hoahaudaiduongvietnam.com/'.url_thisinh_image.$name_rewrite.'-'.$i.'.jpg">Link hình ảnh '.$i.'</a> &nbsp; ';
			}
			include_once('sendmail_smtp/sendmail_dangky.php');
			include_once('sendmail_smtp/sendmail_thongbao.php');
			$_SESSION['upload_image'] = 1;
			return true;
		}else{ echo '0'; return false; }
		
	}else{ echo '0'; return false; }
}

mysql_close();
return true;