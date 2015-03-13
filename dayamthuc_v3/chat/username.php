<?php
session_start();
$_SESSION['username_admin'] = 'nguyentu';
$_SESSION['group_id_admin'] = 1;
$_SESSION['name_admin'] = 'Nguyễn Tú';

if(!isset($_SESSION['username_admin'])){
	echo 'Vui long dang nhap.';
	return false;
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

<style>
body{font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#333}

.error{color:#F00; font-style:italic}
.message{color:#00F}
.font{font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#666; line-height:20px}

#wrapper{width:800px; margin:auto}
#title{clear:both; text-align:center; font-size:20px; margin-bottom:20px}
#user{clear:both; width:auto; float:right; margin-bottom:10px}
#user b{color:#00F}
#user span{font-size:11px}

#left{width:350px; height:400px; float:left; overflow:auto; padding:10px; border:solid 1px #CCC}
.item_left{clear:both; line-height:20px; padding:10px; border-bottom:solid 1px #CCC; cursor:pointer}
.item_left em{font-size:11px; color:#666}
.active{background-color:#FF9}

#right{width:400px; height:400px; float:right; line-height:20px; padding:10px; border:solid 1px #CCC; background-color:#CCC}
#chat{height:300px; overflow:auto; margin-bottom:5px; background-color:#FFF}
#chat .item1{width:auto; float:left; clear:both; color:#111; padding:5px 80px 5px 10px}
#chat .item1 b{color:#00F}
#chat .item2{width:auto; float:right; clear:both; color:#666; padding:5px 10px 5px 80px}

.textarea{width:308px; height:60px; float:left; line-height:20px; resize:none; overflow:auto; padding:4px 10px; margin:5px 0; background-color:#F3F3F3}
.btn_send{width:65px; height:70px; float:right; line-height:60px;  margin:5px 0; cursor:pointer}
</style>
<script type="text/javascript" src="../library/jquery.min.js"></script>
<script type="text/javascript" src="js_checks_field.js"></script>
</head>

<body>

<div id="wrapper">
	<div id="user"><?php echo '<b>'.$_SESSION['name_admin'].'</b> - <span>Chi nhánh: '.$arrayChiNhanh[$_SESSION['group_id_admin']].'</span>';?></div>
	<div id="title">Trang hỗ trợ trực tuyến cho Khách Hàng - Học Viên</div>
	<div id="error" class="error"></div>
	<div id="left"></div>
    
    <div id="right">
    	<div id="chat"></div>
        <div id="message">
        	<div class="error"></div>
        	<textarea name="message" class="textarea font" placeholder="nhập nội dung"></textarea>
        	<input type="button" name="btnChat" value="Gửi" class="btn_send font" />
            <div id="message_new" style="display:none"></div>
            <div id="keychat" style="display:none"></div>
            <div id="nameCustomer" style="display:none"></div>
        </div>
        <div id="sound"></div>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	function sroll_bottom(){
		var height = 1000;
		$("#chat div").each(function(i, value){
			height += parseInt($(this).height());
		});
		
		height += '';
		
		$("#chat").animate({scrollTop: height});
	}
    function listCustomer(){
		$.ajax({
			url:"ajaxNV.php",
			type:"post",
			data:{action:"listCustomer"},
			cache:false,
			success: function(data){
				$("#left").html(data);
				return true;
			}
		});
	}
	function lockChat(){
		$("input[name=btnChat], textarea[name=message]").attr("disabled", true);
		return true;
	}
	function unlockChat(){
		$("input[name=btnChat], textarea[name=message]").attr("disabled", false);
		$("textarea[name=message]").focus();
		return true;
	}
	function getMessage(){
		var message = check_text_length("textarea[name=message]", "#message .error", "Vui lòng nhập nội dung", 1);
		var keychat = $("#keychat").html();
		if(message==false) return false;
		lockChat();
		$.ajax({
			url:"ajaxNV.php",
			type:"post",
			data:{action:"getMessage", keychat:keychat, message:message},
			cache:false,
			success: function(data){
				//$("#error").html(data);
				$("textarea[name=message]").val("");
				if(data!='0'){
					$("#message_new").html(data);
					$("#chat").append('<div class="item2">' + message + '</div>');
					sroll_bottom();
				}else{
					$("#chat").append('<div class="item2"><span class="error">Chưa gửi được</span> "'+message+'"</div>');
					sroll_bottom();
				}
				unlockChat();
				return true;
			}
		});
	}
	function getIdMessage(){
		var keychat = $("#keychat").html();
		$.ajax({
			url:"ajaxNV.php",
			type:"post",
			data:{action:"getIdMessage", keychat:keychat},
			cache:false,
			success: function(data){
				$("#message_new").html(data);
				return true;
			}
		});
	}
	function getMessageNew(){
		var keychat = $("#keychat").html();
		var id = $("#message_new").html();
		var name = $("#nameCustomer").html();
		$.ajax({
			url:"ajaxNV.php",
			type:"post",
			data:{action:"getMessageNew", id:id, keychat:keychat, name:name},
			cache:false,
			success: function(data){
				$("#chat").append(data)
				getIdMessage();
				sroll_bottom();
				if(data!=''){
					$("#sound").html('<embed width="1" height="1" src="chat.wav" loop="false" volume="100" />');
				}
				return true;
			}
		});
		return true;
	}
	listCustomer();
	setInterval(function(){getMessageNew()}, 4000);
	setInterval(function(){listCustomer()}, 60000);
	
	$(".item_left").live("click", function(){
		$(".item_left").removeClass("active");
		$(this).addClass("active");
		
		var keychat = $(this).attr("keychat");
		var name = $(this).attr("name");
		
		$("#nameCustomer").html(name);
		$("#keychat").html(keychat);
		$("textarea[name=message]").focus();
		
		$.ajax({
			url:"ajaxNV.php",
			type:"post",
			data:{action:"chatMessage", keychat:keychat, name:name},
			cache:false,
			success: function(data){
				$("#chat").html(data);
				getIdMessage();
				sroll_bottom();
			}
		});
		return true;
	});
	
	$("input[name=btnChat]").click(function(){
		getMessage();
	});
	$("textarea[name=message]").live("keypress", function(event){
		if(event.which==13){
			getMessage();
		}
	});
});
</script>


</body>
</html>