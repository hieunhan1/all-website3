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
			$(".button_left").html("Kết thúc");
			$(".button_right").hide();
			//$(".button_left").html("Xem thể lệ");
			//$(".button_right").html("Tham gia ngay");
            $(".button_left").live("click",function(){
				//window.open("http://www.dayamthuc.vn/xem-tin/thong-bao-the-le-cuoc-thi-tim-hieu-ve-nghe-pha-che-chuyen-nghiep.html", "_blank");
				window.location = "http://www.dayamthuc.vn";
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
								alert("Cuộc thi tìm hiểu nghề pha chế chuyên nghiệp bạn chỉ có thể tham gia 1 lần.");
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
		'Trường NetSpace có bao nhiêu chương trình đào tạo pha chế chuyên nghiệp?',
		'Thời gian đào tạo chuyên viên pha chế tổng hợp tại trường Netspace là bao lâu?',
		'Bài thi pha chế chuyên nghiệp được đánh giá theo 4 yếu tố nào?'
	);
	$arr_link = array();
	$arr_link[1] = array('http://www.dayamthuc.vn/truong-day-hoc-pha-che/','Trường dạy học pha chế NetSpace','http://www.dayamthuc.vn/danh-muc/Chuong-Trinh-Dao-Tao-3-1.html','Chương trình đào tạo dạy pha chế');
	$arr_link[2] = array('http://www.dayamthuc.vn/xem-tin/hoc-pha-che-sinh-to-de-mo-quan-kinh-doanh-372.html','Học pha chế sinh tố để mở quán kinh doanh','http://www.dayamthuc.vn/xem-tin/chuyen-vien-pha-che-barista-146.html','Chương trình chuyên viên pha chế tổng hợp');
	$arr_link[3] = array('http://www.dayamthuc.vn/xem-tin/Hoc-Pha-Che-Do-Uong-Su-Dam-Me-Cua-Cac-Ban-Tre-200.html','Học pha chế đồ uống - Sự đam mê của các bạn trẻ','http://www.dayamthuc.vn/xem-tin/truong-day-pha-che-gioi-thieu-nghe-doc-dao-351.html','Trường dạy pha chế giới thiệu Nghề độc đáo');
	$content = '<div id="form_timhieu">
        	<div id="question">'.$arr_question[$question].'</div>
            <div id="number">Câu '.$question.'</div>
            <div style="clear:both; height:1px"></div>
        	<div id="answer"><input type="text" name="answer" class="txt" /> <span class="error"></span></div>
            <div id="link">
            	<p> Bạn có thể tham khảo câu trả lời trong bài viết sau nhé!</p>
				<a href="'.$arr_link[$question][0].'" target="_blank">1. '.$arr_link[$question][1].'</a>
				<a href="'.$arr_link[$question][2].'" target="_blank">2. '.$arr_link[$question][3].'</a>
            </div>
        </div>';
	$next_question = $question + 1;
	$pre_question = $question - 1;
	if($question==1){
		$link_next = 'index.php?step=2&question='.$next_question;
		$link_pre = '$(".button_left").hide();';
	}elseif($question==2){
		$link_next = 'index.php?step=2&question='.$next_question;
		$link_pre = '$(".button_left").click(function(){ window.location = "index.php?step=2&question='.$pre_question.'"; });';
	}elseif($question==3){
		$link_next = 'index.php?step=3';
		$link_pre = '$(".button_left").click(function(){ window.location = "index.php?step=2&question='.$pre_question.'"; });';
	}
	$script = '<script type="text/javascript">
		$(document).ready(function(e) {
			$("input[name=answer]").focus();
			$(".button_left").html("Trở lại");
			'.$link_pre.'
			$(".button_right").html("Tiếp theo");
			$(".button_right").click(function(){
				var answer = check_text_length("input[name=answer]",".error","Nhập trả lời",1);
				
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
	<div id="succeed">Chúng tôi sẽ gửi kết quả đến địa chỉ Email của bạn trước ngày 12/12/2014</div>';
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

$bg_image = array('image-0','image-1','image-2','image-3');

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

</body>
</html>