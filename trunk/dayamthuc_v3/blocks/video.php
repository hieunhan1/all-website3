<div id="content">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    
    <div id="left" class="viewpost">
    	<?php
        echo '<h1>'.$row_detail['name'].'</h1>';
		echo '<iframe src="http://www.youtube.com/embed/'.$row_detail['link'].'?autoplay=1&origin=http://www.dayamthuc.vn&amp;rel=0" frameborder="0" width="650" height="500"></iframe>
		<div style="clear:both; height:1px"></div>'.$row_detail['content'];
		?>
        <div style="clear:both; height:30px"></div>
        <hr />
		<div id="other">
        	<div>Video khác</div>
            <?php
            $qr = $tc->video_other($idMenu,$row_detail['id']);
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