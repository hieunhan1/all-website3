<?php
$id = $_GET['id'];
$qr = $tc->forum_info_select($id);
$row_detail = mysql_fetch_array($qr);

$menu_name = mysql_fetch_array($tc->menu_one_id($row_detail['menu_id']));

if(@$_POST['btnSubmit_info_cm']){
	$content = trim($_POST['content_cm']);
	if(strlen($content)>25 && $row_detail['id']!=''){
		$tc->forum_info_insert_cm($content,$row_detail['id']);
	}else $message = 'Đăng trả lời không được. Vui lòng kiểm tra lại';
}

//if(!@$_GET['page']) $page = 1; else $page = $_GET['page'];

$qr = $tc->users_select($row_detail['user_create']);
$row_user = mysql_fetch_array($qr);

echo '<div style="clear:both; height:30px"></div>
<div class="title">'.$menu_name['name'].'</div>
<div id="detail">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="detail">
		<tr><td width="220" valign="top" class="detail_left" style="background-color:#CCC">
				<div class="img"><img src="images/avarta.gif" alt="avarta" /></div>
				<div class="info"><strong>Tên: '.$row_user['name'].'</strong><br />Chi nhánh: '.$row_user['chinhanh'].'</div>
			</td>
			<td valign="top" class="detail_right">
				<div class="date">Ngày đăng: '.date('d-m-Y H:i', strtotime($row_detail['date_create'])).'</div><div style="clear:both; height:10px"></div>
				<h3 id="name_info">'.$row_detail['name'].'</h3><div class="viewpost">'.$row_detail['content'].'</div>
			</td>
		</tr>
	</table>
</div>';

if($row_detail['other']==1){
?>

<div id="detail_comment">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="detail" id="ajax_cm">
    	<?php
        $qr = $tc->forum_info_comment_view($row_detail['id']);
		$total = mysql_num_rows($qr);
		$i = 0;
		while($row = mysql_fetch_array($qr)){
			$i++;
			if($i!=$total){
				echo '<tr>
					<td width="220" valign="top" class="detail_left" style="background-color:#F2F2F2; border-bottom:solid 1px #CFCFCF">
						<div class="img"><img src="images/avarta.gif" alt="avarta" /></div>
						<div class="info"><strong>Tên: '.$row['hoten'].'</strong><br />Chi nhánh: '.$row['chinhanh'].'</div>
					</td>
					<td valign="top" class="detail_right" style="border-bottom:solid 1px #CFCFCF">
						<div class="date">Ngày đăng: '.date('d-m-Y H:i', strtotime($row['date_create'])).'</div><div style="clear:both; height:10px"></div>
						<div class="viewpost">'.$row['content'].'</div>
					</td>
				</tr>';
			}else echo '<tr>
					<td width="220" valign="top" class="detail_left" style="background-color:#F2F2F2; border-bottom:solid 1px #CFCFCF">
						<div class="img"><img src="images/avarta.gif" alt="avarta" /></div>
						<div class="info"><strong>Tên: '.$row['hoten'].'</strong><br />Chi nhánh: '.$row['chinhanh'].'</div>
					</td>
					<td valign="top" class="detail_right" style="border-bottom:solid 1px #CFCFCF">
						<div class="date">Ngày đăng: '.date('d-m-Y H:i', strtotime($row['date_create'])).'</div><div style="clear:both; height:10px"></div>
						<div class="viewpost">'.$row['content'].'</div>
					</td>
				</tr>';
		}
		?>
    </table>
    
    <script type="text/javascript" src="admin/ckeditor/ckeditor.js"></script>
	<script type="text/javascript" src="admin/ckeditor/ckfinder/ckfinder.js"></script>
    <form action="" name="info_comment" method="post" onSubmit="return KiemTra();">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tr><td style="color:#F00"><?php echo $message; ?>&nbsp;</td></tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td><div style="width:680px; margin:auto"><textarea name="content_cm"></textarea></div></td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr>
            <td align="center"><input type="submit" name="btnSubmit_info_cm" value="ĐĂNG TRẢ LỜI" class="btn_login" style="background-color:#017B80" /></td>
        </tr>
    </table></form>
    <script>
	CKEDITOR.replace('content_cm', {
		uiColor: '#b5d8ef',
		toolbar:
		[
		['Source','-','Cut','Copy','Paste','PasteText','PasteFromWord','-', 'SpellChecker', 'Scayt'],
		['Undo','Redo','-','Find','-','RemoveFormat'],
		['Link','Unlink','Iframe'],
		['Image','Table'],
		['NumberedList','BulletedList','-','Outdent','Indent'],
		'/',
		['Styles','FontSize'],
		['Bold','Italic','Underline','Strike','-','Subscript','Superscript'],
		['JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
		['TextColor','BGColor','-','HorizontalRule','SpecialChar','Smiley']
		]
		});
	function KiemTra() {
		myFrmObj = document.info_comment;
		var content = CKEDITOR.instances["content_cm"].getData();
		if(content.length < 26) {
			window.alert("Nội dung phải hơn 20 ký tự");
			return false;
		}
		return true;
	}
	</script>
<?php }else{ echo '<p style="color:blue; font-weight:bold">Bài viết này đã khóa trả lời</p>'; }?>
</div>