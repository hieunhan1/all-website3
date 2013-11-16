<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/'.$lang.'/"><img src="images/home.jpg" alt="Hoang Ha Logistics" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';

echo $navigator.'<div id="list_detail"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2>';
?>

<link href="library/datepicker/jquery-ui-1.8.2.custom.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="library/datepicker/jquery.ui.core.js"></script>
<script type="text/javascript" src="library/datepicker/jquery.ui.datepicker.js"></script>

<table width="960" border="0" cellpadding="0" cellspacing="20" style="margin:auto" id="form_booking">
	<tr>
    	<th align="left" width="100"><?php echo const_contact_name; ?> <font color="#FF0000">*</font></th>
    	<td><input type="text" name="name" class="txt_booking" /></td>
    	<th align="right" width="140"><?php echo const_contact_diachi; ?> <font color="#FF0000">*</font></th>
    	<td><input type="text" name="diachi" class="txt_booking" /></td>
    </tr>
	<tr>
    	<th align="left"><?php echo const_contact_phone; ?> <font color="#FF0000">*</font></th>
    	<td><input type="text" name="phone" class="txt_booking" /></td>
    	<th align="right">Email <font color="#FF0000">*</font></th>
    	<td><input type="text" name="email" class="txt_booking" /></td>
    </tr>
	<tr>
    	<th align="left"><?php echo const_contact_mathang; ?> <font color="#FF0000">*</font></th>
    	<td><input type="text" name="mathang" id="mathang" class="txt_booking" /></td>
    	<th align="right"><?php echo const_contact_date; ?> <font color="#FF0000">*</font></th>
    	<td><input type="text" name="ngaydi" id="ngaydi" class="txt_booking" /></td>
    </tr>
	<tr>
    	<th align="left"><?php echo const_contact_from; ?> <font color="#FF0000">*</font></th>
    	<td><select name="form" class="sel_booking"><option value="">-- Select --</option>
        <?php
        $qr = $tc->booking_form();
		while($row = mysql_fetch_array($qr)){
			echo '<option value="'.$row['ma'].'">'.$row['name'].'</option>';
		}
		?></select></td>
    	<th align="right"><?php echo const_contact_to; ?> <font color="#FF0000">*</font></th>
    	<td><select name="to" class="sel_booking"><option value="">-- Select --</option></select></td>
    </tr>
    <tr>
    	<th align="left" width="120" valign="top">Dims</th>
    	<td style="color:#666; font-size:12px">
        	<input type="text" name="length" class="txt_booking" style="width:40px" value="Length" onfocus="if(value=='Length') value=''" /> &nbsp; x &nbsp; 
            <input type="text" name="width" class="txt_booking" style="width:40px" value="Width" onfocus="if(value=='Width') value=''" /> &nbsp; x &nbsp; 
            <input type="text" name="height" class="txt_booking" style="width:40px" value="Height" onfocus="if(value=='Height') value=''" /></td>
    	<th align="right" width="120">Volume weight (cm)</th>
    	<td><input type="text" name="volume_weight" class="txt_booking" readonly="readonly" style="background-color:#F2F2F2" value="(Length x Width x Height) / 6000" onfocus="if(value=='(Length x Width x Height) / 6000') value=''" /></td>
    </tr>
    <tr><td colspan="4"><div id="banggia"></div></td></tr>
	<tr>
    	<th align="left"><?php echo const_contact_soluong; ?> <font color="#FF0000">*</font></th>
    	<td><input type="text" name="soluong" class="txt_booking" /></td>
    	<th align="right"><?php echo const_contact_nhietdo; ?></th>
    	<td><input type="text" name="nhietdo" class="txt_booking" /></td>
    </tr>
    <tr>
    	<th align="left" valign="top"><?php echo const_contact_yeucau; ?></th>
    	<td colspan="3"><textarea name="message" class="textarea_booking"></textarea></td>
    </tr>
    <tr>
    	<td>&nbsp;</td>
    	<td colspan="3"><input type="button" name="btnBooking" class="btn_booking" value="BOOKING" /></td>
    </tr>
</table>
<script type="text/javascript">
$("#ngaydi").datepicker({
	numberOfMonths: 1,  dateFormat: 'dd/mm/yy',
	monthNames: ['Một','Hai','Ba','Tư','Năm','Sáu','Bảy','Tám','Chín','Mười','Mười một','Mười hai'] ,
	monthNamesShort: ['Tháng1','Tháng2','Tháng3','Tháng4','Tháng5','Tháng6','Tháng7','Tháng8','Tháng9','Tháng10','Tháng11','Tháng12'] ,
	dayNames: ['Chủ nhật', 'Thứ hai', 'Thứ ba', 'Thứ tư', 'Thứ năm', 'Thứ sáu', 'Thứ bảy'],
	dayNamesMin: ['CN', 'T2', 'T3', 'T4', 'T5', 'T6', 'T7'] ,
	showWeek: true , showOn: 'both',
	changeMonth: true , changeYear: true,
	currentText: 'Hôm nay', weekHeader: 'Tuần'
});

$(document).ready(function(e) {
	$("button").html('<img src="images/lich.jpg" alt="lich" />');
	$("button").css({background:'none',border:'none', margin:'0 0 0 -20px'});
	
	$("select[name=form]").change(function(){
		var ma = $(this).val();
		$.post("ajax.php",{form:"form",ma:ma},function(data){
			$("select[name=to]").html(data);
		});
	});
	$("select[name=to]").change(function(){
		var form = $("select[name=form]").val();
		var to = $(this).val();
		$.post("ajax.php",{banggia:"banggia",form:form,to:to},function(data){
			$("#banggia").html(data);
		});
	});
	
	$("input[name=volume_weight]").focus(function(){
		var length = $("input[name=length]").val();
		var width = $("input[name=width]").val();
		var height = $("input[name=height]").val();
		
		var volume_weight = ( (parseInt(length) * parseInt(width) * parseInt(height) ) / 6000);
		$("input[name=volume_weight]").val(volume_weight);
		return true;
	});
	
    $("input[name=btnBooking]").live("click", function(){
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var phone = $("input[name=phone]").val();
		var diachi = $("input[name=diachi]").val();
		var mathang = $("input[name=mathang]").val();
		var ngaydi = $("input[name=ngaydi]").val();
		var form = $("select[name=form]").val();
		var to = $("select[name=to]").val();
		var soluong = $("input[name=soluong]").val();
		var nhietdo = $("input[name=nhietdo]").val();
		var message = $("textarea[name=message]").val();
		
		var other = $("select[name=other]").val(); alert(other);
		var volume_weight = $("input[name=volume_weight]").val();
		var length = $("input[name=length]").val();
		var width = $("input[name=width]").val();
		var height = $("input[name=height]").val();
		
		if(name.length<3){
			alert("Input name");
			$("input[name=name]").focus();
			return false;
		}else if(diachi.length<6){
			alert("Input address");
			$("input[name=diachi]").focus();
			return false;
		}else if(phone.length<10){
			alert("Input phone");
			$("input[name=phone]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Wrong email address");
			$("input[name=email]").focus();
			return false;
		}else if(mathang.length<3){
			alert("Input items");
			$("input[name=mathang]").focus();
			return false;
		}else if(ngaydi==''){
			alert("Select date");
			$("input[name=ngaydi]").focus();
			return false;
		}else if(form==''){
			alert("Select form");
			$("select[name=form]").focus();
			return false;
		}else if(to==''){
			alert("Select to");
			$("select[name=to]").focus();
			return false;
		}else if(soluong==''){
			alert("Input amount");
			$("input[name=soluong]").focus();
			return false;
		}else{
			$("#form_booking").html('<p style="font-weight:bold; padding:30px">Processing...</p>');
			$.post("ajax.php",{booking:"booking",name:name,email:email,phone:phone,diachi:diachi,ngaydi:ngaydi,mathang:mathang,message:message,form:form,to:to,soluong:soluong,nhietdo:nhietdo,lang:"<?php echo $lang; ?>",length:length,width:width,height:height,other:other},function(data){
				if(data!='0') setTimeout(function(){ $("#form_booking").html('<p style="color:#ff8400; font-weight:bold; padding:30px 0 60px;">Send success.</p>'); },200);
				else $("#form_booking").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Undeliverable. Please press F5 to try again.</p>');
			});
			return true;
		}
	});
});
</script>





</div>