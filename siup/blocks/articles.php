<div id="left">
	<?php
    $qr = $tc->menu_one_id($menu_root);
	$row = mysql_fetch_array($qr);
	echo "<h3>{$row['title']}</h3>";
	
	$qr = $tc->menu($menu_root,3);
	while($row = mysql_fetch_array($qr)){
		if($row_menu_one['url']!=$row['url']) echo '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
		else echo '<li><a href="'.$row['url'].'" style="color:#D61D22">'.$row['name'].'</a></li>';
	}
	?>
</div>

<div id="right" style="margin-left:20px; float:left">
    <div id="navigator">
        <a href="?lang=<?php echo $lang; ?>"><img src="images/home.jpg" alt="trang chủ" height="14px" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
</div>

<div id="content_left">
	<?php
    echo '<h1 id="h1_dm">'.$row_detail['name'].'</h1>
	<div id="print_email">
		<div id="email"></div>
		<div id="print" onclick="window.open(\'/print.html?info='.$row_detail['name_rewrite'].'\', \'windowname1\', \'width=700, height=550\'); return false;"></div>
	</div>
	<div class="viewpost">'.$row_detail['content'].'</div>
	<div style="clear:both; height:40px"></div>';
	
	$qr = $tc->tin_lienquan($idMenu,$row_detail['id']);
	if(mysql_num_rows($qr)){
		while($row = mysql_fetch_array($qr)){
			$str_lq .= '<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a>';
		}
		echo '<div id="tin_lienquan"><h5>'.const_tin_khac.'</h5> '.$str_lq.'</div>';
	}
	?>
</div>
<?php flush(); ?>
<div id="content_right">
	<?php
	$str = "SELECT id,name FROM web_menu
	WHERE `delete`=0 AND status=1 AND lang='{$lang}' AND (id='{$menu_root}' OR position_id LIKE '%,4,%') AND (parent_id='0' OR parent_id='{$menu_root}') ORDER BY `order`";
	$qr_r = mysql_query($str);
	if(mysql_num_rows($qr_r) > 0){
		while($row_r = mysql_fetch_array($qr_r)){
			$qr = $tc->slider_banner(5,$row_r['id']);
			if(mysql_num_rows($qr) > 0){
				echo '<div class="right_title">'.$row_r['name'].'</div>';
				while($row = mysql_fetch_array($qr)){
					if($row['code_video'] != ''){
						if(is_numeric($row['code_video'])){
							echo '<div class="right_box_3"><a href="javascript:;"><h3>'.$row['name'].'</h3></a><iframe src="//player.vimeo.com/video/'.$row['code_video'].'" width="170" height="150" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe></div>';
						}else{
							echo '<div class="right_box_3"><a href="javascript:;"><h3>'.$row['name'].'</h3></a><iframe src="http://www.youtube.com/embed/'.$row['code_video'].'?origin=http://'.$domain.'&amp;rel=0" frameborder="0" width="170" height="150"></iframe></div>';
						}
					}else if($row['url_hinh']!='' && $row['content']!=''){
						echo '<div class="right_box_3">
							<a href="'.$row['link'].'"><h3>'.$row['name'].'</h3></a>
							<div class="right_box_3_info">'.$row['content'].'</div>
							<img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" />
						</div>';
					}else if($row['content']!=''){
						echo '<div class="right_box_1">
							<a href="'.$row['link'].'"><h3>'.$row['name'].'</h3></a>
							<div class="right_box_1_info">'.$row['content'].'</div>
						</div>';
					}else{
						echo '<a href="'.$row['link'].'" class="right_box_2"><img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a>';
					}
				}//while qr
				echo '<div style="clear:both; height:30px"></div>';
			}//if qr
		}//while qr_r
	}//if qr_r
	?>
</div>

<div id="popupContact">
    <div id="content_popup">
    	<div style="text-align:right; padding:5px 5px 0 0; background-color:#FFF"><a href="javascript:;" id="popupContactClose"><img src="images/close.png" alt="sản phẩm" /></a></div>
    	<div style="color:#C00; font-weight:bold; font-size:110%; padding-bottom:10px">Chia sẻ bài viết qua Email: <?php echo $row_detail['name']; ?></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="15" id="form_chia_se">
        	<tr>
            	<td width="130">Họ tên người gửi</td>
            	<td><input type="text" name="name_gui" class="txt_chiase" /></td>
            </tr>
        	<tr>
            	<td>Email người gửi</td>
            	<td><input type="text" name="email_gui" class="txt_chiase" /></td>
            </tr>
        	<tr>
            	<td>Email người nhận</td>
            	<td><input type="text" name="email_nhan" class="txt_chiase" /></td>
            </tr>
            <tr>
            	<td valign="top">Thông điệp đính kèm</td>
            	<td><textarea name="message" class="textarea_chiase"></textarea></td>
            </tr>
            <tr>
            	<td>&nbsp;</td>
            	<td><input type="button" name="btnGuiChiaSe" value="Gửi chia sẻ" class="btn_chiase" /></td>
            </tr>
        </table>
    </div>
</div>
<div id="backgroundPopup"></div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("#email").click(function(){
		sroll_top();
		
		var height = $("#popupContact").height();
		$("#popupContact").height(height);
		centerPopup("absolute");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("absolute"); });
		$("#backgroundPopup, #popupContactClose, input[name=btn_huy_nop_hs]").click(function(){
			disablePopup();
		});
	});
	
	$("input[name=btnGuiChiaSe]").click(function(){
		var name_gui = $("input[name=name_gui]").val();
		var email_gui = $("input[name=email_gui]").val();
		var email_nhan = $("input[name=email_nhan]").val();
		var message = $("textarea[name=message]").val();
		
		if(name_gui.length<3){
			alert("Input name");
			$("input[name=name_gui]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email_gui))){
			alert("Wrong email address");
			$("input[name=email_gui]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email_nhan))){
			alert("Wrong email address");
			$("input[name=email_nhan]").focus();
			return false;
		}else{
			$("#form_chia_se").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
			$.post("ajax.php",{chiase_baiviet:"chiase_baiviet",name_gui:name_gui,email_gui:email_gui,email_nhan:email_nhan,link_share:"<?php echo $_SERVER['REQUEST_URI']; ?>",message:message},function(data){
				if(data!='0') setTimeout(function(){ $("#form_chia_se").html('<p style="color:#00F; font-weight:bold; padding:30px 0 60px;">Chia sẻ bài viết thành công.</p>'); },200);
				else $("#form_chia_se").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Lỗi. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
});
</script>