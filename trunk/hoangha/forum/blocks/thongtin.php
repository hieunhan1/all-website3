<?php
	if(@$_POST['btnDoiMatKhau']){
		$name = trim($_POST['name']);
		$pass_cu = $_POST['pass_cu'];
		$pass_moi1 = $_POST['pass_moi1'];
		$pass_moi2 = $_POST['pass_moi2'];
		$result = $tc->DoiMatKhau($name,$pass_cu,$pass_moi1,$pass_moi2);
		/*if($result==true){
			$tc->logout();
		}*/
	}
?>
<style>
#preview{width:150px; height:150px; overflow:hidden; border:solid 1px #CCC}
#preview img{height:150px}
</style>
<table width="60%" border="0" cellpadding="0" cellspacing="0" id="doimatkhau" class="popup_dis" style="margin:auto">
    <tr><td id="name_title"><p style="padding-bottom:20px; font-size:20px; color:blue">Đổi ảnh đại diện</p></td></tr>
    <tr><td><p id="preview"><img src="<?php if($_SESSION['avarta_forum'] != '') echo 'public/avarta/'.$_SESSION['avarta_forum']; else echo 'images/avarta.gif'; ?>" alt="" height="150px" /></p>
    <p><form id="imageform" method="post" enctype="multipart/form-data" action="ajax_image.php">
    	Tải ảnh của bạn (ảnh dưới 2MB) &nbsp; &nbsp; <input type="file" name="photoimg" id="photoimg" />
    </form></p></td></tr>
</table><br /><br /><br />
<script type="text/javascript" src="../library/jquery.form.js"></script>
<script type="text/javascript" >
$(document).ready(function() { 
	$('#photoimg').live('change', function(){ 
		$("#preview").html('');
		$("#preview").html('<img src="images/loader.gif" alt="Uploading...."/>');
		$("#imageform").ajaxForm({
			target: '#preview'
		}).submit();
	});
}); 
</script>

<form action="" name="thongtin" method="post" onSubmit="return KiemTra();">
<table width="60%" border="0" cellpadding="0" cellspacing="0" id="doimatkhau" class="popup_dis" style="margin:auto">
    <tr><td colspan="2" id="name_title"><p style="padding-bottom:20px; font-size:20px; color:blue">Đổi thông tin tài khoản</p></td></tr>
    <tr><td colspan="2" style="color:#F00"><?php echo $result; ?></td></tr>
    <tr>
        <th align="left" width="150">Họ tên:</th>
        <td><input type="text" name="hoten" class="txt_login" value="<?php echo $_SESSION['name_forum']?>" /></td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr>
        <th align="left" width="150">Mật khẩu cũ:</th>
        <td><input type="password" name="pass_cu" class="txt_login" /></td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr>
        <th align="left" width="150">Mật khẩu mới:</th>
        <td><input type="password" name="pass_moi1" class="txt_login" /></td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr>
        <th align="left" width="150">Nhắc lại mật khẩu:</th>
        <td><input type="password" name="pass_moi2" class="txt_login" /></td>
    </tr>
    <tr><td colspan="2">&nbsp;</td></tr>
    <tr>
        <th>&nbsp;</th>
        <td><input type="submit" name="btnDoiMatKhau" value="ĐỔI MẬT KHẨU" class="btn_login" style="background-color:#017B80" /></td>
    </tr>
</table></form>

<script language="javascript">
	function KiemTra() {
		myFrmObj = document.thongtin
		
		if(myFrmObj.hoten.value == "") {
			window.alert("Họ tên không được bỏ trống");
			myFrmObj.hoten.focus("hoten");
			return false;
		}else if(myFrmObj.pass_cu.value.length < 6) {
			window.alert("Mật khẩu cũ phải hơn 6 ký tự");
			myFrmObj.pass_cu.focus("pass_cu");
			return false;
		}else if(myFrmObj.pass_moi1.value.length < 6) {
			window.alert("Mật khẩu mới phải hơn 6 ký tự");
			myFrmObj.pass_moi1.focus("pass_moi1");
			return false;
		}else if(myFrmObj.pass_moi1.value != myFrmObj.pass_moi2.value) {
			window.alert("Mật khẩu nhắc lại chưa đúng");
			myFrmObj.pass_moi2.focus("pass_moi2");
			return false;
		}
		return true;
	}
</script>