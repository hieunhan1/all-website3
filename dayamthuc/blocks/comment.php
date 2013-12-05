<?php 
if (isset($_POST['btnSent'])) {
	$str = strtolower($_POST['capcha']);
	if ($_SESSION['captcha_code'] != $str) {
		$error="<font color='#FF0000'><i>Nhập sai mã số.</i></font>"; // xử lý lỗi
	}
	else {
		include_once "capcha/sendmail.php";
		///////////end ham gửi mail
	}
}
?>
<script language="javascript">
	$(document).ready(function(){
		var FullName = $('input[name=FullName]').val();
		if(FullName == '') $('#frmComment').hide();
		$('#comment').click(function(){
			$('#frmComment').show(100);
		});
		$('input[name=btnCancel]').click(function(){
			$('#frmComment').hide(100);
		});
	});
</script>
<div id="comment"><a href="javascript:;">Please leave your comments here</a></div>
<div id="frmComment">
	<script language="javascript">
		function KiemTra() {
			myFrmObj = document.comment
			
			if(myFrmObj.FullName.value == "") {
				window.alert("Please enter a valid name.");
				myFrmObj.FullName.focus("FullName");
				return false;
			}
			else if(myFrmObj.Email.value == "") {
				window.alert("Please enter an email address.");
				myFrmObj.Email.focus("Email");
				return false;
			}
			else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myFrmObj.Email.value))){
				window.alert("Please enter a valid email address.");
				myFrmObj.Email.focus("Email");
				return false;
			}
			else if(myFrmObj.Comment.value == "") {
				window.alert("Please write your comments here.");
				myFrmObj.Comment.focus("Comment");
				return false;
			}
			else if(myFrmObj.cap.value == "") {
				window.alert("Please enter a valid security code");
				myFrmObj.cap.focus("cap");
				return false;
			}
			return true;
		}
	</script>
    <form action='' method='post' name='comment' onSubmit="return KiemTra()">
    <table width='450' align="center" border='0' cellspacing='0' cellpadding='5'>
      <tr>
        <th width='110' align='right'>Title: <span style='color:#FF0000'>*</span></th>
        <td><select name="Title">
                <option value="Mr. " <?php if($_POST['Title'] == 'Mr. ') echo 'selected="selected"';?> >Mr</option>
                <option value="Mrs. " <?php if($_POST['Title'] == 'Mrs. ') echo 'selected="selected"';?> >Mrs</option>
                <option value="Ms. " <?php if($_POST['Title'] == 'Ms. ') echo 'selected="selected"';?> >Ms</option>
                <option value="Miss. " <?php if($_POST['Title'] == 'Miss. ') echo 'selected="selected"';?> >Miss</option>
            </select>
        </td>
      </tr>
      <tr>
        <th align='right'>Name: <span style='color:#FF0000'>*</span></th>
        <td><input type='text' name='FullName' value='<?php if(isset($_POST['FullName'])) echo $_POST['FullName'];?>' maxlength='250' class='style2' /></td>
      </tr>
      <tr>
        <th align='right' valign='top'>Email: <span style='color:#FF0000'>*</span></th>
        <td><input type='text' name='Email' value='<?php if(isset($_POST['Email'])) echo $_POST['Email'];?>' maxlength='250' class='style2' /></td>
      </tr>
      <tr>
        <th align='right'>Address:</th>
        <td><input type='text' name='Address' value='<?php if(isset($_POST['Address'])) echo $_POST['Address'];?>' maxlength='250' class='style2' /></td>
      </tr>
      <tr>
        <th align='right'>Tel:</th>
        <td><input type='text' name='Tel' value='<?php if(isset($_POST['Tel'])) echo $_POST['Tel'];?>' maxlength='250' class='style2' /></td>
      </tr>
      <tr>
        <th align='right' valign='top'>Comment: <span style='color:#FF0000'>*</span></th>
        <td><textarea name='Comment' class='style3'><?php if(isset($_POST['Comment'])) echo $_POST['Comment'];?></textarea></td>
      </tr>
        <tr>
          <th align='right' valign='top'>Security code:<span style='color:#FF0000'> *</span></th>
          <td><input name="capcha" type="text" id="capcha" class='style2' />
              <br /><br /><img src="capcha/capcha_image.php" /><br /> <?php echo $error; ?></td>
        </tr>
      <tr>
        <td>&nbsp;        </td>
        <td><input type='submit' name='btnSent' value='Sent' style="padding:3px 15px" /> <input type='reset' name='btnCancel' value='Cancel' style="padding:3px 10px" /></td>
      </tr>
    </table>
  </form>
</div>
<div style="clear:both; height:50px;"></div>