<div id="content">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    
    <div id="left" class="viewpost">
        <?php
		if($row_detail['other2']==1) $dangky = '<p style="text-align:center"><a href="http://'.$domain.'/Dang-Ky-Truc-Tuyen/'.$row_detail['id'].'/"><img alt="đăng ký trực tuyến" border="0px" src="http://www.dayamthuc.vn/upload/tin-tuc/dang-ky-truc-tuyen.gif" /></a></p>';
		
        echo '<h1>'.$row_detail['name'].'</h1>'.$dangky.$row_detail['content'].$dangky;
		?>
        <div style="clear:both; height:30px"></div>
        <hr />
		<div id="other">
        	<div>Bài viết khác</div>
            <?php
            $qr = $tc->info_other($idMenu,$row_detail['id']);
			while($row = mysql_fetch_array($qr)){
				echo '<li><a href="'.$danhmuc.'/'.$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
			}
			?>
        </div>
        
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:10px"></div>
    <div><a href="javascript:;" id="run_top" title="Lên đầu trang"><img src="images/top.jpg" alt="top" /></a></div>
    <div style="clear:both; height:20px"></div>
</div>