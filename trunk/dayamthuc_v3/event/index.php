<?php error_reporting(E_ALL ^ E_NOTICE); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cuộc thi tìm hiểu về Netspace</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<script type="text/javascript" src="../library/jquery.min.js"></script>
<script type="text/javascript" src="../library/jquery.corner.js"></script>
<script type="text/javascript" src="js_checks_field.js"></script>
</head>

<body>

<?php
/*
step = null	: Gioi thieu
step = 1	: Thong tin
step = 2	: 3 cau hoi
step = 3	: Ket qua
*/
function step_0(&$content){
	$content = '';
	$script = '<script type="text/javascript">
		$(document).ready(function(e) {
			$(".button_left").html("Xem thể lệ");
			$(".button_right").html("Tham gia ngay");
            $(".button_left").live("click",function(){
				window.open("http://www.dayamthuc.vn/xem-tin/thong-bao-the-le-cuoc-thi-vui-giang-sinh-rinh-qua-cung-netspace.html", "_blank");
			});
			$(".button_right").live("click",function(){
				window.location = "index.php?step=1";
			});
        });
	</script>';
	return $script;
}
function step_1(&$content){
	$content = '<div id="form_info">
            <div class="field"><input type="text" name="name" value="" class="txt" /> <span class="error" id="name"></span></div>
            <div class="field">
                <input type="radio" name="gender" value="1" checked="checked" /> Nam &nbsp; &nbsp; &nbsp;  &nbsp; 
                <input type="radio" name="gender" value="0" /> Nữ
				<input type="text" name="phone" value="" class="txt" style="width:100px; margin-left:170px" /> <span class="error" id="phone"></span>
            </div>
            <div class="field"><input type="text" name="email" value="" class="txt" /> <span class="error" id="email"></span></div>
            <div class="field" style="margin-left:50px"><input type="text" name="address" value="" class="txt" /> <span class="error" id="address"></span></div>
        </div>';
	$script = '<script type="text/javascript">
		$(document).ready(function(e) {
			$(".button_left").hide();
			$(".button_right").html("Bắt đầu");
			$(".button_right").click(function(){
				var address = check_text_length("input[name=address]","#address","Nhập địa chỉ",5);
				var email = check_email("input[name=email]","#email","Email chưa đúng");
				var phone = check_phone("input[name=phone]","#phone","ĐT chưa đúng");
				var name = check_text_length("input[name=name]","#name","Nhập họ tên",2);
				var gender = $.trim($("input[name=gender]:checked").val());
				
				if(name!=false && phone!=false && email!=false && address!=false){
					$.ajax({
						url:"ajax.php",
						type:"post",
						data:{thongtincanhan:1,name:name,gender:gender,phone:phone,email:email,address:address},
						cache:false,
						success: function(data){
							if(data=="1"){
								window.location = "index.php?step=2";
							}else{
								alert("Vui Giáng Sinh rinh quà cùng NETSPACE bạn chỉ có thể tham gia 1 lần.");
								return false;
							}
						}
					});
				}else{
					return false;
				}
			});
        });
	</script>';
	return $script;
}
function step_2(&$content){
	$content = '<div id="hello">Chào bạn:<br /><b></b><br />Đây là món quà<br />dành tặng bạn!</div>
	<div id="btn_khampha">Khám phá</div>';
	$script = '<script type="text/javascript">
		$(document).ready(function(e) {
			$.ajax({
				url:"ajax.php",
				type:"post",
				data:{getname:1},
				cache:false,
				success: function(data){
					$("#hello b").html(data);
				}
			});
			$("#btn_khampha").click(function(){
				window.location = "index.php?step=3";
			});
        });
	</script>';
	return $script;
}
function step_3(&$content){
	$content = '<div id="img_monan"></div>
	<div id="link">
		<p>Bạn có thể tham khảo cách chế biến trong bài viết sau nhé!</p>
		<a href="http://www.dayamthuc.vn/hoc-nau-an/" title="Học nấu ăn ở NetSpace" target="_blank">Học nấu ăn ở NetSpace</a>
	</div>';
	
	$script = '<script type="text/javascript">
		$(document).ready(function(e) {
			$.ajax({
				url:"ajax.php",
				type:"post",
				data:{img_monan:1},
				cache:false,
				success: function(data){
					$("#img_monan").html(data);
				}
			});
			$("#img_monan").corner("56px");
			$(".button_left").hide();
			$(".button_right").html("Chế biến");
            $(".button_right").live("click",function(){
				window.location = "index.php?step=4";
			});
        });
	</script>';
	return $script;
}
function step_4(&$content){
	$content = '<div id="form_timhieu" oncopy="return false" ondrag="return false" ondrop="return false" onpaste="return false" ondragstart="return false" onselectstart="return false" unselectable="on" style="-moz-user-select: -moz-none; -khtml-user-select: none; -webkit-user-select: none; -ms-user-select: none; user-select: none;">
		<div id="answer1"><input type="text" name="answer1" class="txt" style="width:350px" /> <span></span></div>
		<div id="answer2"><textarea name="answer2" class="txt" style="width:450px; height:66px; overflow:auto"></textarea> <span></span></div>
		<div id="answer3"><textarea name="answer3" class="txt" style="width:450px; height:110px; overflow:auto"></textarea> <span></span></div>
		<div style="clear:both; height:1px"></div>
	</div>';
	$script = '<script type="text/javascript">
		$(document).ready(function(e) {
			$(".button_left").html("Quay lại");
			$(".button_right").html("Hoàn thành");
            $(".button_right").live("click",function(){
				var answer3 = check_text_length("textarea[name=answer3]","#answer3 span","Nhập Cách chế biến",10);
				var answer2 = check_text_length("textarea[name=answer2]","#answer2 span","Nhập nguyên liệu",10);
				var answer1 = check_text_length("input[name=answer1]","#answer1 span","Nhập tên món ăn",2);
				if(answer1!=false && answer2!=false && answer3!=false){
					$.ajax({
						url:"ajax.php",
						type:"post",
						data:{answer:1,answer1:answer1,answer2:answer2,answer3:answer3},
						cache:false,
						success: function(data){
							if(data=="1"){
								window.location = "index.php?step=5";
							}else{
								alert(data);
								return false;
							}
						}
					});
				}else{
					return false;
				}
			});
            $(".button_left").live("click",function(){
				window.location = "index.php?step=3";
			});
        });
	</script>';
	return $script;
}
function step_5(&$content){
	$content = '<div id="datetime">00:00</div>';
	$script = '<script type="text/javascript">
		$(document).ready(function(e) {
			$(".button_left").hide();
			$(".button_right").hide();
			$.ajax({
				url:"ajax.php",
				type:"post",
				data:{succeed:1},
				cache:false,
				success: function(data){
					$("#datetime").html(data);
				}
			});
        });
	</script>';
	return $script;
}

$bg_image = array('image-0','image-1','image-2','image-3','image-4','image-5');

$step = $_GET['step'];
if(!isset($step)){
	$view_bg_image = $bg_image[0];
	$script = step_0($content);
}elseif($step==1){
	$view_bg_image = $bg_image[$step];
	$script = step_1($content);
}elseif($step==2){
	$view_bg_image = $bg_image[$step];
	$question = $_GET['question'];
	$script = step_2($content, $question);
}elseif($step==3){
	$view_bg_image = $bg_image[$step];
	$script = step_3($content);
}elseif($step==4){
	$view_bg_image = $bg_image[$step];
	$script = step_4($content);
}elseif($step==5){
	$view_bg_image = $bg_image[$step];
	$script = step_5($content);
}
?>

<div id="wrapper" style="background:url(<?php echo $view_bg_image; if(isset($_GET['question'])) echo '-'.$_GET['question'];?>.jpg) no-repeat">
	<div id="content">
    	<?php echo $content; ?>
    </div>
    
    <div id="action">
        <div class="button button_left"></div>
        <div class="button button_right"></div>
    </div>
    <?php echo $script; ?>
</div>


<script type='text/javascript'>window._sbzq||function(e){e._sbzq=[];var t=e._sbzq;t.push(["_setAccount",14913]);var n=e.location.protocol=="https:"?"https:":"http:";var r=document.createElement("script");r.type="text/javascript";r.async=true;r.src=n+"//static.subiz.com/public/js/loader.js";var i=document.getElementsByTagName("script")[0];i.parentNode.insertBefore(r,i)}(window);</script>

</body>
</html>