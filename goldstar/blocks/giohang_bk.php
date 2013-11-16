<div style="clear:both; height:20px"></div>
<div id="navigator" style="margin-bottom:30px; padding-left:20px">
    <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
    <?php echo $tc->navigator($idMenu); ?>
</div>

<?php
$sosp = count($_SESSION['daySoLuong']);
if ($sosp > 0){
	reset($_SESSION['daySoLuong']);
	reset($_SESSION['name']);
	reset($_SESSION['price']);
	$tongtien=0; $tongsoluong=0;
	for ($i=0; $i<$sosp; $i++) {
		$idSP = key($_SESSION['daySoLuong']);
		$namesp = current($_SESSION['name']);
		$dongia = current($_SESSION['price']);
		$soluong = current($_SESSION['daySoLuong']);
		$tien = $dongia*$soluong;
		$tongtien += $tien;
		$tongsoluong += $soluong;
		$view_order .= '<tr id="sp'.$idSP.'">
			<td style="padding:8px 15px">'.$namesp.'</td>
			<td align="center">'.$soluong.' <img src="images/edit.gif" alt="'.$idSP.'" class="soluong" /></td>
			<td align="center">'.number_format($dongia,0,',','.').' vnđ</td>
			<td align="center">'.number_format($tien,0,',','.').' vnđ</td>
			<td align="center"><span class="trash trash_'.$idSP.'">X</span></td>
		</tr>';
		next($_SESSION['name']);
		next($_SESSION['price']);
		next($_SESSION['daySoLuong']);
	}//end for
	$view_order .= '<tr>
		<td style="padding:8px 15px" align="right"><strong>Tổng</strong></td>
		<td align="center">'.$tongsoluong.'</td>
		<td align="center"></td>
		<td align="center">'.number_format($tongtien,0,',','.').' vnđ</td>
		<td align="center">&nbsp;</td>
	</tr>';
}else $view_order = '<tr><td colspan="5" style="padding:10px; color:#F00">Bạn chưa đặt mua sản phẩm.</td></tr>';
?>
<div id="baiviet">
	<div style="margin:0 15px">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
    	<tr>
        	<td colspan="5"><?php echo "<h1>{$row_menu_one['title']}</h1> <h2>{$row_menu_one['metaDescription']}</h2>"?><br /></td>
        </tr>
        <tr bgcolor="#FBCECF">
        	<td style="padding:8px 15px"><strong>Tên sản phẩm</strong></td>
        	<td width="100" align="center"><strong>Số lượng</strong></td>
        	<td width="130" align="center"><strong>Giá</strong></td>
        	<td width="130" align="center"><strong>Thành tiền</strong></td>
        	<td width="100" align="center"><strong>Xóa</strong></td>
        </tr>
        <?php echo $view_order;?>
        <tr>
        	<td colspan="5"><br /><hr /></td>
        </tr>
        <tr>
        	<td colspan="2">&nbsp;</td>
        	<td colspan="2"><div class="muahang" id="thanhtoan">Thanh toán đơn hàng</div></td>
        	<td align="center"><a href="javascript:void();" id="huydh" style="color:#F00">Hủy đơn hàng</a></td>
        </tr>
    </table>
    <br /><br />
    <table width="65%" border="0" cellpadding="0" cellspacing="10" id="form_thanhtoan" style="margin:auto; display:none">
    	<tr>
        	<td colspan="2"><p style="color:#00F">Quý khách vui lòng điền đầy đủ thông tin</p></td>
        </tr>
        <tr>
        	<td width="120" align="right">Họ tên:</td>
        	<td><input type="text" name="name" style="width:250px; height:25px; line-height:25px; border:solid 1px #CCC" /></td>
        </tr>
        <tr>
        	<td align="right">Email:</td>
        	<td><input type="text" name="email" style="width:250px; height:25px; line-height:25px; border:solid 1px #CCC" /></td>
        </tr>
        <tr>
        	<td align="right">Điện thoại:</td>
        	<td><input type="text" name="phone" style="width:250px; height:25px; line-height:25px; border:solid 1px #CCC" /></td>
        </tr>
        <tr>
        	<td align="right">Địa chỉ:</td>
        	<td><input type="text" name="diachi" style="width:250px; height:25px; line-height:25px; border:solid 1px #CCC" /></td>
        </tr>
        <tr>
        	<td align="right" valign="top">Yêu cầu:</td>
        	<td><textarea name="message" style="width:250px; height:80px; line-height:20px; resize:none; overflow:auto; border:solid 1px #CCC"></textarea></td>
        </tr>
        <tr>
        	<td align="right" valign="top">&nbsp;</td>
        	<td><input type="button" name="subDH" value="ĐẶT HÀNG" style="width:250px; height:30px; color:#FFF; font-weight:bold; line-height:30px; border:none; background-color:#ED1E24; cursor:pointer" /></td>
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
		var soluong = prompt('Nhập số lượng:');
		if(soluong < 200 && soluong > 0) {
			$.post("ajax.php",{soluong:soluong,id:id},function(){
				window.location.reload();
				return true;
			})
		}else{
			alert('Số lượng không hợp lệ.');
			return false;
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
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
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
				if(data!='0') setTimeout(function(){ $("#form_thanhtoan").html('<p style="color:#ff8400; font-weight:bold; padding:30px 0 60px;">Thanh toán thành công.</p>'); },200);
				else $("#form_thanhtoan").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Thanh toán thất bại. Vui lòng ấn F5 thử lại</p>');
			});
			return true;
		}
	});
});
</script>