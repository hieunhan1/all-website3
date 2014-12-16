<?php error_reporting(E_ALL ^ E_NOTICE); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Cuộc thi tìm hiểu về Netspace</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<script type="text/javascript" src="../library/jquery.min.js"></script>
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
			//$(".button_left").html("Tìm hiểu thêm");
			$(".button_left").hide();
			$(".button_right").html("Kết thúc");
            $(".button_left").live("click",function(){
				window.open("http://www.dayamthuc.vn/xem-tin/thong-bao-the-le-cuoc-thi-tim-hieu-ve-netspace.html", "_blank");
			});
			/*$(".button_right").live("click",function(){
				window.location = "index.php?step=1";
			});*/
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
            </div>
            <div class="field"><input type="text" name="phone" value="" class="txt" /> <span class="error" id="phone"></span></div>
            <div class="field"><input type="text" name="email" value="" class="txt" /> <span class="error" id="email"></span></div>
            <div class="field"><input type="text" name="address" value="" class="txt" /> <span class="error" id="address"></span></div>
        </div>';
	$script = '<script type="text/javascript">
		$(document).ready(function(e) {
			$(".button_left").hide();
			$(".button_right").html("Bắt đầu");
			$(".button_right").click(function(){
				var address = check_text_length("input[name=address]","#address","Nhập địa chỉ",5);
				var email = check_email("input[name=email]","#email","Email chưa đúng");
				var phone = check_phone("input[name=phone]","#phone","Điện thoại chưa đúng");
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
								window.location = "index.php?step=2&question=1";
							}else{
								alert("Cuộc thi tìm hiểu về Netspace bạn chỉ có thể tham gia 1 lần.");
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
function step_2(&$content, $question){
	$arr_question = array('',
		'Trường NetSpace có bao nhiêu chi nhánh trên cả nước?',
		'Trường NetSpace có bao nhiêu chương trình đào tạo?',
		'Theo bạn vì sao học nấu ăn và pha chế không dễ chút nào?'
	);
	$arr_link = array();
	$arr_link[1] = array('http://www.dayamthuc.vn/truong-day-nau-an/','Trường dạy nấu ăn NetSpace','http://www.dayamthuc.vn/truong-day-hoc-pha-che/','Trường dạy học pha chế NetSpace');
	$arr_link[2] = array('http://www.dayamthuc.vn/xem-tin/Hoc-Nau-An-O-Dau-173.html','Học nấu ăn ở đâu, địa chỉ học nấu ăn','http://www.dayamthuc.vn/danh-muc/Chuong-Trinh-Dao-Tao-3-1.html','Chương trình đào tạo dạy học nấu ăn');
	$arr_link[3] = array('http://www.dayamthuc.vn/xem-tin/hoc-nau-an-o-dau-de-vung-tay-nghe-sang-tuong-lai-287.html','Học nấu ăn ở đâu để vững tay nghề - sáng tương lai','http://www.dayamthuc.vn/xem-tin/Hoc-Pha-Che-Do-Uong-Su-Dam-Me-Cua-Cac-Ban-Tre-200.html','Học pha chế đồ uống - Sự đam mê của các bạn trẻ');
	$content = '<div id="form_timhieu">
        	<div id="question">'.$arr_question[$question].'</div>
            <div id="number">CÂU '.$question.'</div>
            <div style="clear:both; height:1px"></div>
        	<div id="answer"><input type="text" name="answer" class="txt" style="text-align:center" /> <span class="error"></span></div>
            <div id="link">
            	<p> Bạn có thể tham khảo câu trả lời trong bài viết sau nhé!</p>
				<a href="'.$arr_link[$question][0].'" target="_blank">1. '.$arr_link[$question][1].'</a>
				<a href="'.$arr_link[$question][2].'" target="_blank">2. '.$arr_link[$question][3].'</a>
            </div>
        </div>';
	$next_question = $question + 1;
	if($question==1 || $question==2){
		$check_answer = 'var answer = check_number("input[name=answer]",".error","Nhập số");';
		$link_next = 'index.php?step=2&question='.$next_question;
	}elseif($question==3){
		$check_answer = 'var answer = check_text_length("input[name=answer]",".error","Nhập nội dung",2);';
		$link_next = 'index.php?step=3';
	}
	$script = '<script type="text/javascript">
		$(document).ready(function(e) {
			$(".button_right").hide();
			$(".button_left").html("Tiếp theo");
			$(".button_left").click(function(){
				'.$check_answer.'
				
				if(answer!=false){
					$.ajax({
						url:"ajax.php",
						type:"post",
						data:{question:'.$question.',answer:answer},
						cache:false,
						success: function(data){
							if(data=="1"){
								window.location = "'.$link_next.'";
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
        });
	</script>';
	return $script;
}
function step_3(&$content){
	$content = '<div id="datetime">00:00</div>
	<div id="succeed">Chúng tôi sẽ gửi kết quả đến địa chỉ Email của bạn trước ngày 05/12/2014</div>';
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

$bg_image = array('image-0.jpg','image-1.jpg','image-2.jpg','image-3.jpg');

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
}
?>

<div id="wrapper" style="background:url(<?php echo $view_bg_image;?>) no-repeat">
	<div id="content">
    	<?php echo $content; ?>
    </div>
    
    <div id="action">
        <div class="button button_left"></div>
        <div class="button button_right"></div>
    </div>
    <?php echo $script; ?>
</div>

</body>
</html>