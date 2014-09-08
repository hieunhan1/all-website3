<div class="wrapper"><div class="home_item_3">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php
		$str = explode(',',$row_detail['menu_id']);
		$i = count($str)-2;
		if($str[$i]!=56 && $str[$i]!=65 && $str[$i]!=63) $idMenu = $str[$i]; else $idMenu = $str[$i-1];
		
		echo $tc->navigator($idMenu);
		?>
    </div>
    <hr />
    
    <div id="left" class="viewpost">
        <?php
		if($row_detail['other2']==1) $dangky = '<div class="register_online"><a href="http://'.$domain.'/Dang-Ky-Truc-Tuyen/'.$row_detail['id'].'/">'.const_register_online.'</a></div>';
		
        echo '<h1>'.$row_detail['name'].'</h1>'.$dangky.$row_detail['content'].$dangky;
		?>
        <div style="clear:both; height:30px"></div>
        <?php
        $qr = $tc->info_other($idMenu,$row_detail['id']);
		if(mysql_num_rows($qr) > 0){
			echo '<hr /> <div id="other"> <div>'.const_tin_khac.'</div>';
			while($row = mysql_fetch_array($qr)){
				echo '<li><a href="'.$danhmuc.'/'.$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
			}
			echo '</div>';
		}
		?>
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:10px"></div>
</div></div>

<div id="popupContact">
    <div id="content_popup">
    	<div style="text-align:right; padding:5px 5px 0 0; background-color:#FFF"><a href="javascript:;" id="popupContactClose"><img src="images/close.png" alt="sản phẩm" /></a></div>
        <div style="color:#F00; font-weight:bold; font-size:130%; padding-bottom:10px">Đăng ký cuộc thi trổ tài làm “CÁC MÓN GỎI ĐẲNG CẤP”</div>
        <div id="ajax_register_other"></div>
    </div>
</div>
<div id="backgroundPopup"></div>