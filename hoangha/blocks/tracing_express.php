<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/'.$lang.'/"><img src="images/home.jpg" alt="Hoang Ha Logistics" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';

echo $navigator;
?>
<div style="clear:both; height:20px"></div>
<div class="viewpost">
    <h1 style="font-size:24px"><?php echo $row_menu_one['name'];?></h1>
    <h2><?php echo $row_menu_one['metaDescription'];?></h2><br /><br />
    <table width="500" border="0" cellpadding="0" cellspacing="10" style="margin:auto">
    	<tr>
        	<td width="80">Mã BILL:</td>
        	<td><input type="text" name="ma_bill" style="width:250px; height:25px; line-height:25px; padding:0 5px; border:solid 1px #999" /></td>
        	<td><input type="button" name="btn_ma_bill" style="height:28px; line-height:28px; padding:0 25px; font-size:120%; font-weight:bold; color:#FFF; border:none; background-color:#017B80; cursor:pointer" value="Track!" /></td>
        </tr>
    </table>
    <div id="form_bill" style="margin-top:50px"></div>
    <div style="clear:both; height:30px"></div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("input[name=btn_ma_bill]").click(function(){
		var ma_bill = $("input[name=ma_bill]").val();
		if($.trim(ma_bill) != ''){
			$("#form_bill").html('<p style="color:blue; font-weight:bold">Đang xử lý..</p>');
			$.post("ajax.php",{tracktrace:"tracktrace",ma_bill:ma_bill},function(data){
				setTimeout(function(){ $("#form_bill").html(data); },500);
			});
		}else return false;
	});
});
</script>