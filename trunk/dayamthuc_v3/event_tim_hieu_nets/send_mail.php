<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<?php
include_once('../class/class.trangchu.php');
$tc = new trangchu();

$i = 0;
$qr = mysql_query("SELECT * FROM `web_event`");
while($row = mysql_fetch_array($qr)){
	$i++;
	if($row['send_mail']==0) $action='Gửi mail'; else $action='Đã gửi';
	$str .= '<tr><td>'.$i.'</td>
		<td>'.$row['name'].'</td>
        <td>'.$row['email'].'</td>
        <td><span class="send_mail" name="'.$row['name'].'" email="'.$row['email'].'" id="'.$row['id'].'" style="font-weight:bold; cursor:pointer">'.$action.'</span></td>
    </tr>';
}
?>
<table width="700px" border="1" cellpadding="3" cellspacing="0" style="float:left; border-collapse:collapse">
	<tr>
    	<th align="left">STT</th>
    	<th align="left">Tên</th>
    	<th align="left">Email</th>
    	<th align="left">Trạng Thái</th>
    </tr>
    <?php echo $str;?>
</table>
<div id="ketqua" style="width:400px; float:left; margin-left:720px; position:fixed; top:0"></div>
<script type="text/javascript" src="../library/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(e) {
	$(".send_mail").click(function(){
		var id = $(this).attr("id");
		var name = $(this).attr("name");
		var email = $(this).attr("email");
		$("#ketqua").html('');
		$(this).hide(100);
		$.ajax({
			url:"ajax.php",
			type:"post",
			data:{send_mail:id,name:name,email:email},
			cache:false,
			success: function(data){
				$("#ketqua").html(data);
				$("#" + id).html('Đã gửi');
				$("#" + id).show(100);
			}
		});
	});
});
</script>
</body>
</html>