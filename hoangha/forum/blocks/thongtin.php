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
<form action="" name="thongtin" method="post" onSubmit="return KiemTra();">
<table width="60%" border="0" cellpadding="0" cellspacing="0" id="doimatkhau" class="popup_dis" style="margin:auto">
    <tr><td colspan="2" id="name_title"><p style="padding-bottom:20px; font-size:20px; color:blue">Đổi thông tin tài khoản</p></td></tr>
    <tr><td colspan="2" style="color:#F00"><?php echo $result; ?></td></tr>
    <tr>
        <th align="left" width="150">Họ tên:</th>
        <td><input type="text" name="hoten" class="txt_login" value="<?php echo $_SESSION['name']?>" /></td>
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