<div style="clear:both; height:20px"></div>
<div id="navigator" style="margin-bottom:30px; padding-left:20px">
    <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
    <?php echo $tc->navigator($idMenu); ?>
</div>

<?php
$sosp = count($_SESSION['list_soluong']);
if ($sosp > 0){
	reset($_SESSION['list_soluong']);
	reset($_SESSION['list_name']);
	reset($_SESSION['list_price']);
	$tongtien=0; $tongsoluong=0;
	for ($i=0; $i<$sosp; $i++) {
		$idSP = key($_SESSION['list_soluong']);
		$namesp = current($_SESSION['list_name']);
		$dongia = current($_SESSION['list_price']);
		$soluong = current($_SESSION['list_soluong']);
		$tien = $dongia*$soluong;
		$tongtien += $tien;
		$tongsoluong += $soluong;
		$view_order .= '<tr id="sp'.$idSP.'">
			<td style="padding:8px 15px; border-bottom:solid 1px #CCC">'.$namesp.'</td>
			<td align="center" style="border-bottom:solid 1px #CCC">'.$soluong.' <img src="images/edit.gif" alt="'.$idSP.'" class="soluong" style="cursor:pointer" /></td>
			<td align="center" style="border-bottom:solid 1px #CCC">'.number_format($dongia,0,',','.').' vnđ</td>
			<td align="center" style="border-bottom:solid 1px #CCC">'.number_format($tien,0,',','.').' vnđ</td>
			<td align="center" style="border-bottom:solid 1px #CCC" title="Hủy: '.$namesp.'"><span class="trash trash_'.$idSP.'" style="color:#F00; font-weight:bold; cursor:pointer">x</span></td>
		</tr>';
		next($_SESSION['list_name']);
		next($_SESSION['list_price']);
		next($_SESSION['list_soluong']);
	}//end for
	$view_order .= '<tr>
		<td style="padding:8px 15px" align="right"><strong>Tổng</strong></td>
		<td align="center">'.$tongsoluong.'</td>
		<td align="center"></td>
		<td align="center">'.number_format($tongtien,0,',','.').' vnđ</td>
		<td align="center">&nbsp;</td>
	</tr>';
	$btn_thanhtoan = '<tr><td colspan="5"><br /></td></tr>
    <tr><td colspan="2">&nbsp;</td><td colspan="2"><div class="muahang" id="thanhtoan">Đặt hàng ngay</div></td>
    <td align="center"><a href="javascript:void();" id="huydh" style="color:#F00">Hủy đơn hàng</a></td></tr>';
}else $view_order = '<tr><td colspan="5" style="padding:10px; color:#F00">Bạn chưa đặt mua sản phẩm.</td></tr>';
?>
<div id="baiviet">
	<div style="margin:0 15px">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
    	<tr>
        	<td colspan="5"><?php echo "<div class='viewpost'><h1>{$row_menu_one['title']}</h1></div>"?>
            <div id="luuy" style="line-height:22px; font-size:105%">
                <p style="margin-bottom:10px"><b><em>Chính sách bán hàng:</em></b></p>
                <p style="margin-bottom:10px"><b>Hiện tại công ty chỉ giao hàng trong khu vực Trung Tâm Tp.HCM. Quí khách có nhu cầu mua đồ chơi của shopdochoi.com vui lòng đến địa chỉ Số 10 An Điềm, Phường 10, Quận 5, TP. Hồ Chí Minh.</b></p>
                <p style="margin-bottom:10px">- Chỉ giao hàng miễn phí ở gần trung tâm thành phố như: Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q10, Q11, Bình Thạnh, Phú Nhuận, Tân Phú, Tân Bình, Bình Tân <b style="color:#C00">với hóa đơn lớn hơn 100.000đ</b></p>
                <p style="margin-bottom:10px">- Còn những khu vực Q9, Q12, Thủ Đức, Củ Chi, Hóc Môn, Bình Chánh, Nhà Bè, Cần Giờ Quí khách phải trả thêm chi phi giao hàng.</p>
                <p style="color:#00F; font-weight:bold; margin-bottom:10px">- Trước khi giao hàng nhân viên sẽ liên hệ cho Quí khách</p>
            </div><br /><br /></td>
        </tr>
        <tr bgcolor="#FBCECF" class="title_giohang">
        	<td style="padding:8px 15px"><strong>Tên sản phẩm</strong></td>
        	<td width="100" align="center"><strong>Số lượng</strong></td>
        	<td width="130" align="center"><strong>Giá</strong></td>
        	<td width="130" align="center"><strong>Thành tiền</strong></td>
        	<td width="100" align="center"><strong>Hủy</strong></td>
        </tr>
        <?php echo $view_order.$btn_thanhtoan;?>
    </table>
    <br /><br />
    <table width="65%" border="0" cellpadding="0" cellspacing="10" id="form_thanhtoan" style="margin:auto; display:none">
    	<tr>
        	<td colspan="2"><p style="color:#00F">Quý khách vui lòng điền đầy đủ thông tin</p></td>
        </tr>
        <tr>
        	<td width="120" align="right">Họ tên:</td>
        	<td><input type="text" name="name" maxlength="30" style="width:300px; height:25px; line-height:25px; border:solid 1px #CCC" /></td>
        </tr>
        <tr>
        	<td align="right">Email:</td>
        	<td><input type="text" name="email" style="width:300px; height:25px; line-height:25px; border:solid 1px #CCC" /></td>
        </tr>
        <tr>
        	<td align="right">Điện thoại:</td>
        	<td><input type="text" name="phone" maxlength="15" style="width:300px; height:25px; line-height:25px; border:solid 1px #CCC" /></td>
        </tr>
        <tr>
        	<td align="right">Địa chỉ:</td>
        	<td><input type="text" name="diachi" maxlength="200" style="width:300px; height:25px; line-height:25px; border:solid 1px #CCC" /></td>
        </tr>
        <tr>
        	<td align="right" valign="top">Yêu cầu:</td>
        	<td><textarea name="message" style="width:300px; height:80px; line-height:20px; resize:none; overflow:auto; border:solid 1px #CCC"></textarea></td>
        </tr>
        <tr>
        	<td align="right" valign="top">&nbsp;</td>
        	<td><input type="button" name="subDH" value="ĐẶT HÀNG" style="width:300px; height:30px; color:#FFF; font-weight:bold; line-height:30px; border:none; background-color:#ED1E24; cursor:pointer" /></td>
        </tr>
    </table>
    <br /><br /></div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $(".trash").click(function(){
		var id = ($(this).attr("class")).split("trash_");
		$.post("ajax.php",{trash:"trash",id:id[1]},function(){
			window.location.reload();
			return true;
		})
	});
	
	$(".soluong").click(function(){
		var id = $(this).attr("alt");
		var soluong = parseInt(prompt('Nhập số lượng:',1));
		if(soluong > 0) {
			$.post("ajax.php",{soluong:soluong,id:id},function(){
				window.location.reload();
				return true;
			})
		}
	});
	
	$("#huydh").click(function(){
		if(confirm("Bạn có muốn hủy đơn hàng này?")) {
			$.post("ajax.php",{huydh:1},function(){
				window.location.reload();
				return true;
			})
		}
	});
	
	$("#thanhtoan").click(function(){
		$("#form_thanhtoan").css("display","block");
	});
	
	$("input[name=subDH]").click(function(){
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var phone = $("input[name=phone]").val();
		var diachi = $("input[name=diachi]").val();
		var message = $("textarea[name=message]").val();
		
		if(name.length<3){
			alert("Input name");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) && email!=''){
			alert("Wrong email address");
			$("input[name=email]").focus();
			return false;
		}else if(phone.length<10){
			alert("Input phone");
			$("input[name=phone]").focus();
			return false;
		}else{
			$("#form_thanhtoan").html('<p style="font-weight:bold; padding:30px">Processing...</p>');
			$.post("ajax.php",{form_thanhtoan:"form_thanhtoan",name:name,email:email,phone:phone,diachi:diachi,message:message},function(data){
				if(data!='0') setTimeout(function(){ $("#form_thanhtoan").html('<p style="color:#ff8400; font-weight:bold; padding:30px 0 60px;">Đặt hàng thành công.</p>'); },200);
				else $("#form_thanhtoan").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Thanh toán thất bại. Vui lòng ấn F5 thử lại</p>');
			});
			return true;
		}
	});
});
</script>