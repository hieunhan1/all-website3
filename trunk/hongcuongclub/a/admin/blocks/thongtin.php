<?php
if(@$_POST['btnSubmit']){
	$message = $qt->DoiMatKhau();
}
?>
<form action="" method="post" name="thongtin">
<table width="400" border="0" cellpadding="5" cellspacing="0">
	<tr>
    	<th colspan="2" align="left"><?php echo $message; ?>&nbsp;</th>
    </tr>
    <tr>
    	<th width="126">Mật khẩu cũ:</th>
    	<td><input type="password" name="password" class="input_large" /></td>
    </tr>
	<tr>
    	<th>Mật khẩu mới:</th>
    	<td><input type="password" name="password_new" class="input_large" /></td>
    </tr>
	<tr>
    	<th>Mật khẩu nhắc lại:</th>
    	<td><input type="password" name="password_repeat" class="input_large" /></td>
    </tr>
	<tr>
    	<th>&nbsp;</th>
    	<td><input type="submit" name="btnSubmit" value="Đổi mật khẩu" class="button" /></td>
    </tr>
</table>
</form>