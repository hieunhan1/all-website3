<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.png" alt="" /></a>'.$tc->navigator($idMenu).'</div>';
$view_post = '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2></div><div style="clear:both; height:20px"></div>';

if(!@$_SESSION['upload_image']) $_SESSION['upload_image'] = '1';

$arr_url_hinh = explode(',', $_SESSION['upload_image']);
$total_url_hinh = count($arr_url_hinh);
if($total_url_hinh != 4){
	for($i=0; $i<$total_url_hinh; $i++){
		if($arr_url_hinh[$i] != '1')
			$image_upload .= '<img src="public/temp/'.$arr_url_hinh[$i].'" class="preview" />';
	}
	
	$image_upload = '<p><form id="imageform" method="post" enctype="multipart/form-data" action="ajax_image.php">
		<b style="color:#FF0">Tải 4 ảnh của bạn (mỗi ảnh dưới 2MB) &nbsp; &nbsp; </b>
		<input type="file" name="photoimg" id="photoimg" />
	</form></p><p id="preview">'.$image_upload.'</p>
	<img src="images/loader.gif" alt="Uploading...." id="ajax_loading" />';
}else{
	for($i=0; $i<$total_url_hinh; $i++) $image_upload .= '<img src="public/temp/'.$arr_url_hinh[$i].'" class="preview" />';
	
	$image_upload .= '<div style="clear:both">** Nếu bạn muốn đổi hình đại diện khác vui lòng tắt tất cả trình duyệt, upload lại.</div>';
}

echo $navigator.$view_post;
?>
<style>
.preview{width:100px; float:left; border:solid 1px #dedede; margin-right:10px; padding:2px}
#preview{color:#FF5959; font-size:12px}
</style>

<div id="ajax_dangky">
<table width="90%" border="0" cellpadding="0" cellspacing="0" id="form_dangky">
	<tr>
    	<td width="30" align="right" valign="top" style="font-weight:bold">1.</td>
    	<td width="200" valign="top">Họ tên:</td>
        <td><p><input type="text" name="name" class="txt_dangky" /></p>
        <?php echo $image_upload; ?></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">2.</td>
    	<td>Ngày sinh:</td>
        <td><input type="text" name="ngaysinh" class="txt_dangky2 select_date" /> <span>Nơi sinh: <input type="text" name="noisinh" class="txt_dangky2" /></span></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">3.</td>
    	<td>Chiều cao (m):</td>
        <td><input type="text" name="chieucao" class="txt_dangky2" /> <span>Cân nặng (kg): <input type="text" name="cannang" class="txt_dangky2" /></span></td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">4.</td>
    	<td>Số đo 3 vòng (cm)<br />(ngực - eo - mông):</td>
        <td><input type="text" name="sodo" class="txt_dangky2" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">5.</td>
    	<td>Số CMND hoặc hộ chiếu:</td>
        <td><input type="text" name="cmnd" class="txt_dangky2" /> <span>&nbsp; &nbsp; Nơi cấp: <input type="text" name="noicap" class="txt_dangky2" /></span> <span>Ngày cấp: <input type="text" name="ngaycap" class="txt_dangky2 select_date" /></span></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">6.</td>
    	<td>Hộ khẩu thường trú:</td>
        <td><input type="text" name="hokhau" class="txt_dangky" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">7.</td>
    	<td>Chỗ ở hiện tại:</td>
        <td><input type="text" name="choohientai" class="txt_dangky" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">8.</td>
    	<td>Điện thoại:</td>
        <td><input type="text" name="dienthoai" class="txt_dangky" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">9.</td>
    	<td>Email:</td>
        <td><input type="text" name="email" class="txt_dangky" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">10.</td>
    	<td>Địa chỉ các trang mạng xã hội:</td>
        <td><input type="text" name="trangmang_xh" class="txt_dangky" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">11.</td>
    	<td>Nghề nghiệp hiện tại:</td>
        <td><input type="text" name="nghenghiep" class="txt_dangky" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">12.</td>
    	<td>Địa chỉ đang công tác:</td>
        <td><input type="text" name="noicongtac" class="txt_dangky" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">13.</td>
    	<td>Trình độ học vấn:</td>
        <td><select name="trinhdo" class="select_dangky">
        	<option value="1">Chưa tốt nghiệp phổ thông</option>
        	<option value="2">Tốt nghiệp phổ thông</option>
        	<option value="3">Trung cấp</option>
        	<option value="4">Cao đẳng</option>
        	<option value="5">Đại học</option>
        	<option value="6">Sau đại học</option>
        </select></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">14.</td>
    	<td>Ngoại ngữ:</td>
        <td><input type="text" name="ngoaingu" class="select_dangky" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">15.</td>
    	<td>Sở thích:</td>
        <td><input type="text" name="sothich" class="txt_dangky" /></td>
    </tr>
	<tr>
    	<td align="right" style="font-weight:bold">16.</td>
    	<td>Mô tả ngắn gọn về bản thân:</td>
        <td><textarea name="metaDescription" class="textarea_dangky"></textarea></td>
    </tr>
    <tr>
    	<td align="right" style="font-weight:bold">13.</td>
    	<td>Bạn biết thông tin Hoa Hậu Đại Dương Việt Nam 2014 từ đâu?</td>
        <td><select name="kenh_timkiem" class="select_dangky">
        	<option value="1">Tivi</option>
        	<option value="2">Báo chí</option>
        	<option value="3">Internet</option>
        	<option value="4">Bạn bè</option>
        	<option value="5">Khác</option>
        </select></td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">18.</td>
        <td colspan="2"><p>Vì sao bạn tham gia cuộc thi Hoa Hậu Đại Dương Việt Nam 2014?</p><textarea name="other2" class="textarea_dangky2"></textarea></td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">19.</td>
        <td colspan="2"><p>Bạn đã từng tham gia chương trình biễu diễn thời trang, cuộc thi sắc đẹp, người mẫu nào chưa? Đó là chương trình gì? Thời gian nào?</p><textarea name="other3" class="textarea_dangky2"></textarea></td>
    </tr>
	<tr>
    	<td align="right" valign="top" style="font-weight:bold">20.</td>
        <td colspan="2"><p>Đã từng chịu sự quản lý độc quyền hoặc làm việc với công ty quảy lý người mẫu nào tại Việt Nam chưa? Nếu có, hãy nêu rõ tên công ty, địa chỉ và thời gian bạn làm việc tại công ty đó.</p><textarea name="other4" class="textarea_dangky2"></textarea></td>
    </tr>
    <tr>
    	<td>&nbsp;</td>
        <td colspan="2"><p style="line-height:22px; font-size:120%; color:#FF9"><b>Tôi cam kết:</b> <br />
- Bản thân đáp ứng đủ các điều kiện để trở thành thí sinh tham dự chương trình theo quy định tại thể lệ tham dự được ban hành bởi nhà tổ chức <br />
- Chịu trách nhiệm về tính chính xác và trung thực của nội dung đăng ký dự thi trên <br />
- Tôi chưa lập gia đình và cũng chưa sinh con.<br />
- Đồng ý những điều kiện, quy định của nhà tổ chức liên quan đến chương trình mà tôi tham gia.
</p>
        <input type="button" name="btn_dangky" value="Đăng ký cuộc thi Hoa Hậu Đại Dương Việt Nam" id="btn_dangky" /></td>
    </tr>
</table>
</div>
<div style="clear:both; height:30px"></div>

<link href="library/datepicker/jquery-ui-1.8.2.custom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="library/datepicker/jquery.ui.core.js"></script>
<script type="text/javascript" src="library/datepicker/jquery.ui.datepicker.js"></script>

<script type="text/javascript" src="library/jquery.form.js"></script>
<script type="text/javascript" >
$(document).ready(function() { 
	$("#ajax_loading").hide();
	$('#photoimg').live('change', function(){ 
		$("#ajax_loading").show();
		$("#imageform").ajaxForm({
			target: '#preview'
		}).submit();
	});
}); 
</script>

<script type="text/javascript">
$(document).ready(function(){
	$(".select_date").datepicker({
		numberOfMonths: 1,  dateFormat: 'dd/mm/yy',
		monthNames: ['Một','Hai','Ba','Tư','Năm','Sáu','Bảy','Tám','Chín','Mười','Mười một','Mười hai'] ,
		monthNamesShort: ['Tháng1','Tháng2','Tháng3','Tháng4','Tháng5','Tháng6','Tháng7','Tháng8','Tháng9','Tháng10','Tháng11','Tháng12'] ,
		dayNames: ['Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm', 'Thứ sáu', 'Thứ bảy'],
		dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'] ,
		showWeek: true , showOn: 'both',
		changeMonth: true , changeYear: true,
		currentText: 'Hôm nay', weekHeader: 'Tuần'
	});
	
	$("#btn_dangky").click(function(){
		var name = $("input[name=name]").val();
		var ngaysinh = $("input[name=ngaysinh]").val();
		var noisinh = $("input[name=noisinh]").val();
		var chieucao = $("input[name=chieucao]").val();
		var cannang = $("input[name=cannang]").val();
		var sodo = $("input[name=sodo]").val();
		var cmnd = $("input[name=cmnd]").val();
		var ngaycap = $("input[name=ngaycap]").val();
		var noicap = $("input[name=noicap]").val();
		var hokhau = $("input[name=hokhau]").val();
		var choohientai = $("input[name=choohientai]").val();
		var dienthoai = $("input[name=dienthoai]").val();
		var email = $("input[name=email]").val();
		var trangmang_xh = $("input[name=trangmang_xh]").val();
		var nghenghiep = $("input[name=nghenghiep]").val();
		var noicongtac = $("input[name=noicongtac]").val();
		var trinhdo = $("select[name=trinhdo]").val();
		var ngoaingu = $("input[name=ngoaingu]").val();
		var sothich = $("input[name=sothich]").val();
		var metaDescription = $("textarea[name=metaDescription]").val();
		var kenh_timkiem = $("select[name=kenh_timkiem]").val();
		var other2 = $("textarea[name=other2]").val();
		var other3 = $("textarea[name=other3]").val();
		var other4 = $("textarea[name=other4]").val();
		
		if(name==''){
			alert("Nhập họ tên");
			$("input[name=name]").focus();
			return false;
		}else if(ngaysinh==''){
			alert("Nhập ngày sinh");
			$("input[name=ngaysinh]").focus();
			return false;
		}else if(noisinh==''){
			alert("Nhập nơi sinh");
			$("input[name=noisinh]").focus();
			return false;
		}else if(chieucao==''){
			alert("Nhập chiều cao");
			$("input[name=chieucao]").focus();
			return false;
		}else if(cannang==''){
			alert("Nhập cân nặng");
			$("input[name=cannang]").focus();
			return false;
		}else if(sodo==''){
			alert("Nhập số đo 3 vòng");
			$("input[name=sodo]").focus();
			return false;
		}else if(cmnd==''){
			alert("Nhập chứng minh hoặc hộ chiếu");
			$("input[name=cmnd]").focus();
			return false;
		}else if(ngaycap==''){
			alert("Nhập ngày cấp");
			$("input[name=ngaycap]").focus();
			return false;
		}else if(noicap==''){
			alert("Nhập nơi cấp");
			$("input[name=noicap]").focus();
			return false;
		}else if(hokhau==''){
			alert("Nhập hộ khẩu");
			$("input[name=hokhau]").focus();
			return false;
		}else if(choohientai==''){
			alert("Nhập chỗ ở hiện tại");
			$("input[name=choohientai]").focus();
			return false;
		}else if(dienthoai==''){
			alert("Nhập điện thoại");
			$("input[name=dienthoai]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Email chưa đúng");
			$("input[name=email]").focus();
			return false;
		}else if(nghenghiep==''){
			alert("Nhập nghề nghiệp");
			$("input[name=nghenghiep]").focus();
			return false;
		}else if(noicongtac==''){
			alert("Nhập nơi đang công tác");
			$("input[name=noicongtac]").focus();
			return false;
		}else if(trinhdo==''){
			alert("Chọn trình độ học vấn");
			$("select[name=trinhdo]").focus();
			return false;
		}else if(sothich==''){
			alert("Nhập sở thích");
			$("input[name=sothich]").focus();
			return false;
		}else if(metaDescription==''){
			alert("Nhập giới thiệu về bản thân");
			$("textarea[name=metaDescription]").focus();
			return false;
		}else{
			$("#ajax_dangky").html('<p style="font-weight:bold; padding:30px 0 60px;">Đang xử lý....</p>');
			$.post("ajax.php",{dangky_tructuyen:"dangky_tructuyen",name:name,ngaysinh:ngaysinh,noisinh:noisinh,chieucao:chieucao,cannang:cannang,sodo:sodo,cmnd:cmnd,ngaycap:ngaycap,noicap:noicap,hokhau:hokhau,choohientai:choohientai,dienthoai:dienthoai,email:email,trangmang_xh:trangmang_xh,nghenghiep:nghenghiep,noicongtac:noicongtac,trinhdo:trinhdo,ngoaingu:ngoaingu,sothich:sothich,metaDescription:metaDescription,kenh_timkiem:kenh_timkiem,other2:other2,other3:other3,other4:other4},function(data){
				if(data!='0') setTimeout(function(){ $("#ajax_dangky").html('<p style="color:#FFF; font-weight:bold; padding:30px 0 60px;">Đăng ký cuộc thi Hoa Hậu Đại Dương Việt Nam năm 2014 thành công.</p>'); },200);
				else $("#ajax_dangky").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Lỗi. Vui lòng ấn F5 thử lại.</p>');
			});
		}
	});
});
</script>