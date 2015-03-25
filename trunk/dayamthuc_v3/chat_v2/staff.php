<?php
session_start();
/*$_SESSION['username_admin'] = 'nguyentu';
$_SESSION['group_id_admin'] = 1;
$_SESSION['name_admin'] = 'Nguyễn Tú';*/
error_reporting(E_ERROR);

if(!isset($_SESSION['username_admin'])){
	echo 'Vui long dang nhap.';
	return false;
}

$blockChat = 2;
if(isset($_GET['keychat'])){
	$keychat = $_SESSION['keychat'] = $_GET['keychat'];
	$username = $_SESSION['username_admin'];
	$_SESSION['typeUser'] = 2;
	include_once("config.php");
	include_once("db.php");
	$db = new db;
	$data = $db->checkStaff($keychat);
	if($data['username']=='' && $username!='admin'){
		$db->updateUsernameCustomer($keychat, $username);
		$blockChat = 0;
	}else if($data['username']==$username) $blockChat = 0;
	else if($username=='admin') $blockChat = 0;
	else $blockChat = 1;
}
$arrayChiNhanh =  array('','Tp.HCM','Đà Nẵng','Đà Lạt','Cần Thơ');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nhân viên tư vấn</title>
<meta name="robots" content="NOFOLLOW" />
<link type="icon/x-icon" href="../images/logo_icon.ico" rel="shortcut icon" />
<link rel="stylesheet" href="style.css" type="text/css" />
<style>
#wrapper{width:800px; margin:auto}

.textarea{width:378px; height:60px; float:left; line-height:20px; resize:none; overflow:auto; padding:4px 10px; margin:5px 0; background-color:#F3F3F3}
</style>

<script type="text/javascript" src="../library/jquery.min.js"></script>
<script type="text/javascript" src="chat.js"></script>
<script type="text/javascript" src="js_checks_field.js"></script>
</head>

<body>

<div id="wrapper">
	<div id="user"><?php echo '<b>'.$_SESSION['name_admin'].'</b> - <span>Chi nhánh: '.$arrayChiNhanh[$_SESSION['group_id_admin']].'</span>';?></div>
	<div id="title">Trang hỗ trợ trực tuyến cho Khách Hàng - Học Viên</div>
	<div id="error" class="error"></div>
	<div id="left"></div>
    
    <div id="right">
        <?php if($blockChat==0){ ?>
        <div id="frmChat">
        	<div id="state" style="display:none"></div>
        	<div id="loading"><img src="images/loader.gif" alt="loading" /></div>
            <div id="chat-wrap"><div id="chat-area" class="font" style="height:320px"></div></div>
            <form id="send-message-area">
                <textarea id="sendie" maxlength="300" class="textarea font" placeholder="nhập nội dung và nhấn ENTER để gửi..."></textarea>
            </form>
        </div>
        <?php }elseif($blockChat==1) echo '<b>Đã có người chat với khách này rồi</b>'; ?>
    </div>
</div>
<?php
$keychat = '';
$nickname = '';
if(isset($_GET['nickname'])) $nickname=$_GET['nickname'];
if(isset($_GET['keychat'])) $keychat=$_GET['keychat'];
?>
<script type="text/javascript">
$(document).ready(function(e) {
    function listCustomer(){
		$.ajax({
			url:"ajax.php",
			type:"post",
			data:{action:"listCustomer",keychat:"<?php echo $keychat;?>",nickname:"<?php echo $nickname;?>"},
			cache:false,
			success: function(data){
				$("#left").html(data);
				return true;
			}
		});
	}
	listCustomer();
	setInterval(function(){ listCustomer(); }, 61000);
	setTimeout(function(){ $("#loading").hide(); }, 3000);
	
	$(".item_left").live("click",function(){
		$(".item_left").css("background-color", "#FFF");
		$(".chat").hide();
		$(this).css("background-color", "#FF9");
		$(this).children(".chat").show();
		return true;
	})
});
</script>

<script type="text/javascript"> 
setInterval(function(){ chat.update(); }, 3000); 
//var name = prompt("Enter your chat name:", "Guest");
var name = "<?php echo $_SESSION['name_admin']; ?>"
if (!name || name === ' ') { name = "Guest"; }
// strip tags
name = name.replace(/(<([^>]+)>)/ig,"");
// display name on page
//$("#name-area").html("You are: <span>" + name + "</span>");

// kick off chat
var chat =  new Chat();
$(function() {
	chat.getState();
	// watch textarea for key presses
	$("#sendie").keydown(function(event) {  
		var key = event.which;  
   
		//all keys including return.  
		if (key >= 33) {
			var maxLength = $(this).attr("maxlength");  
			var length = this.value.length;  
		
			// don't allow new content if length is maxed out
			if (length >= maxLength) {  
				event.preventDefault();  
			}  
		}
	});
	// watch textarea for release of key press
	$('#sendie').keyup(function(e) {	
		if (e.keyCode == 13) {
			var text = $.trim($(this).val());
			var maxLength = $(this).attr("maxlength");  
			var length = text.length;
	
			// send 
			if (length<=maxLength + 1 && text!='') {
				chat.send(text, name);	
				$(this).val("");
			} else {
				$(this).val(text.substring(0, maxLength));
			}
		}
	});
});
</script>
</body>
</html>