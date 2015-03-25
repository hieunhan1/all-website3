<?php
session_start();
if(!isset($_SESSION['typeUser'])) $_SESSION['typeUser'] = 1;
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Hỗ trợ trực tuyến cho khách hàng học viên - Trường dạy nấu ăn NETSPACE</title>
<meta name="description" content="Hỗ trợ trực tuyến cho khách hàng học viên có nhu cầu nấu ăn, học nấu ăn - Trường dạy nấu ăn NETSPACE" />
<meta name="keywords" content="hỗ trợ trực tuyến nấu ăn, ho tro truc tuyen nau an" />
<link rel="stylesheet" href="style.css" type="text/css" />
<script type="text/javascript" src="../library/jquery.min.js"></script>
<script type="text/javascript" src="chat.js"></script>
<script type="text/javascript" src="js_checks_field.js"></script>
</head>

<body>

<div id="wrapper">
	<?php if(!isset($_SESSION['keychat'])){?>
	<div id="error" class="error"></div>
    <div id="info_customer" style="display:block">
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
    <script type="text/javascript">
	$(document).ready(function(e) {
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
						window.location = "index.php";
					}else{
						$("#error").html(data);
					}
					return true;
				}
			});
		});
	});
	</script>
    <?php } else { ?>
    <div id="frmChat">
    	<div id="state" style="display:none"></div>
        <div id="loading" style="width:350px"><img src="images/loader.gif" alt="loading" /></div>
    	<div class="font" style="margin:0 0 10px 10px">
        	<span style="color:#F00"><b>Tư vấn trực tuyến</b> - Sẵn sàng hỗ trợ</span><br />
            Bạn có thắc mắc? Hãy chat với chúng tôi!
        </div>
        <div id="chat-wrap"><div id="chat-area" class="font"></div></div>
        <form id="send-message-area">
            <textarea id="sendie" maxlength="300" class="textarea font" placeholder="nhập nội dung và nhấn ENTER để gửi..."></textarea>
        </form>
    </div>
    <script type="text/javascript">
	setInterval(function(){ chat.update(); }, 3000);
	setTimeout(function(){
		$("#loading").hide();
		$("textarea").focus();
	}, 3000);
	//var name = prompt("Enter your chat name:", "Guest");
	var name = "<?php if(isset($_SESSION['nickname'])) echo $_SESSION['nickname']; else if(isset($_SESSION['name_admin'])) echo $_SESSION['name_admin'];?>"
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
    <?php } ?>
</div>
</body>
</html>