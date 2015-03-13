<?php
session_start();
if(!isset($_SESSION['keychat'])) $_SESSION['keychat'] = time();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hỗ trợ trực tuyến cho khách hàng học viên - Trường dạy nấu ăn NETSPACE</title>
<meta name="description" content="Hỗ trợ trực tuyến cho khách hàng học viên có nhu cầu nấu ăn, học nấu ăn - Trường dạy nấu ăn NETSPACE" />
<meta name="keywords" content="hỗ trợ trực tuyến nấu ăn, ho tro truc tuyen nau an" />
<link type="icon/x-icon" href="../images/logo_icon.ico" rel="shortcut icon" />
<style>
#wrapper{width:350px; margin:auto}

.error{color:#F00; font-style:italic}
.message{color:#00F}
.font{font-family:Arial, Helvetica, sans-serif; font-size:13px; color:#666; line-height:20px}

.select{width:324px; padding:4px 10px; margin:5px 0}
.txt{width:300px; padding:4px 10px; margin:5px 0}
.btn{padding:5px 20px; margin:5px 0; cursor:pointer}

#sound{width:1px; height:1px; overflow:hidden}

#frm_chat{}
#chat{clear:both; line-height:20px; height:260px; overflow:auto; color:#333; border:solid 1px #CCC; margin-bottom:3px}
#chat .item1{width:auto; float:left; clear:both; padding:5px 50px 5px 5px}
#chat .item1 b{color:#00F}
#chat .item2{width:auto; float:right; clear:both; color:#666; padding:5px 10px 5px 50px}
.textarea{width:258px; height:60px; float:left; line-height:20px; resize:none; overflow:auto; padding:4px 10px; margin:5px 0; border:solid 1px #CCC; background-color:#F3F3F3}
.btn_send{width:65px; height:70px; float:right; line-height:60px;  margin:5px 0; cursor:pointer}
</style>
<script type="text/javascript" src="../library/jquery.min.js"></script>
<script type="text/javascript" src="js_checks_field.js"></script>
</head>

<body>
<div id="wrapper">
	<div id="error" class="error"></div>
    <div id="info_customer" class="viewpost">
        <div class="font" style="margin-top:30px"><b>Chào bạn chúng tôi có thể giúp gì cho bạn?</b><br />Vui lòng điền thông tin bên dưới để chúng tôi tư vấn trực tuyến cho bạn nhé!</div>
        <div id="group_id">
            <div class="error"></div>
            <select name="group_id" class="select font">
                <option value="">Chọn cơ sở học nấu ăn</option>
                <option value="1">Tp.HCM</option>
                <option value="2">Đà Nẵng</option>
                <option value="3">Đà Lạt</option>
                <option value="4">Cần Thơ</option>
            </select>
        </div>
        <div id="name">
            <div class="error"></div>
            <input type="text" name="name" class="txt font" placeholder="Nhập họ tên" />
        </div>
        <div id="phone">
            <div class="error"></div>
            <input type="text" name="phone" class="txt font" placeholder="Nhập số điện thoại" /><br />
        </div>
        <input type="button" name="btnCustomer" value="Gửi" class="btn font" /><br />
    </div>
    
    <div id="frm_chat">
    	<div class="font" style="margin:0 0 10px 10px">
        	<span style="color:#F00"><b>Tư vấn trực tuyến</b> - Sẵn sàng hỗ trợ</span><br />
            Bạn có thắc mắc? Hãy chat với chúng tôi!
        </div>
    	<div id="chat" class="font"></div>
        <div id="message">
        	<div class="error"></div>
        	<textarea name="message" class="textarea font" placeholder="nhập nội dung..."></textarea>
        	<input type="button" name="btnChat" value="Gửi" class="btn_send font" />
            <div id="message_new" style="display:none"></div>
        </div>
        <div id="sound"></div>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
	function checkCustomer(){
		$.ajax({
			url:"ajax.php",
			type:"post",
			data:{action:"checkCustomer"},
			cache:false,
			success: function(data){
				if(data=="0"){
					$("#info_customer").show();
					$("#frm_chat").hide();
				}else if(data=="1"){
					$("#info_customer").hide();
					$("#frm_chat").show();
				}
				return true;
			}
		});
		return true;
	}
	function sroll_bottom(){
		var height = 1000;
		$("#chat div").each(function(i, value){
			height += parseInt($(this).height());
		});
		
		height += '';
		
		$("#chat").animate({scrollTop: height});
		return true;
	}
	function chatMessage(){
		$("textarea[name=message]").focus();
		$.ajax({
			url:"ajax.php",
			type:"post",
			data:{action:"chatMessage"},
			cache:false,
			success: function(data){
				getIdMessage();
				$("#chat").html(data);
				sroll_bottom();
				return true;
			}
		});
		return true;
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
		if(message==false) return false;
		lockChat();
		$.ajax({
			url:"ajax.php",
			type:"post",
			data:{action:"getMessage",message:message},
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
		return true;
	}
	function getIdMessage(){
		$.ajax({
			url:"ajax.php",
			type:"post",
			data:{action:"getIdMessage"},
			cache:false,
			success: function(data){
				$("#message_new").html(data);
				return true;
			}
		});
	}
	function getMessageNew(){
		var id = $("#message_new").html();
		$.ajax({
			url:"ajax.php",
			type:"post",
			data:{action:"getMessageNew", id:id},
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
	checkCustomer();
	chatMessage();
	setInterval(function(){getMessageNew()}, 4000);
	
    $("input[name=btnCustomer]").click(function(){
		var phone = check_phone("input[name=phone]", "#phone .error", "Vui lòng nhập điện thoại");
		var name = check_text_length("input[name=name]", "#name .error", "Vui lòng nhập họ tên", 2);
		var group_id = check_number("select[name=group_id]", "#group_id .error", "Vui lòng chọn chi nhánh");
		if(name==false || phone==false) return false;
		$.ajax({
			url:"ajax.php",
			type:"post",
			data:{action:"getCustomer",group_id:group_id,name:name,phone:phone},
			cache:false,
			success: function(data){
				if(data=='1' || data=='2'){
					$("#info_customer").hide();
					$("#frm_chat").show();
					chatMessage();
				}else{
					$("#error").html(data);
				}
				return true;
			}
		});
	});
	
	$("input[name=btnChat]").live("click", function(){
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