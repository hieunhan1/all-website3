    <div id="print"> 
    	<div style="width:105px; height:25px; margin-top:5px; float:left; overflow:hidden"><div class="fb-like" data-href="http://www.facebook.com/truong.day.am.thuc.netspace" data-send="false" data-layout="button_count" data-width="150" data-show-faces="true"></div></div>
        <div style="width:60px; height:25px; margin-top:5px; float:left; overflow:hidden"><div class="fb-send" data-href="http://www.dayamthuc.vn<?php echo $_SERVER['REQUEST_URI']?>"></div></div>
        <a id="printer" href="javascript:window.print();"><img src="images/print.jpg" alt="print" /></a>
        <div id="fb-root"></div>
		<script>(function(d, s, id) {
          var js, fjs = d.getElementsByTagName(s)[0];
          if (d.getElementById(id)) return;
          js = d.createElement(s); js.id = id;
          js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
          fjs.parentNode.insertBefore(js, fjs);
        }(document, 'script', 'facebook-jssdk'));</script>
    </div><div style="clear:both; height:1px"></div>
	<?php
	if($row_xem['other2']==1) $dangky = '<p style="text-align:center"><a href="http://www.dayamthuc.vn/Dang-Ky-Truc-Tuyen/'.$row_xem['id'].'/"><img alt="đăng ký trực tuyến" border="0px" src="http://www.dayamthuc.vn/upload/tin-tuc/dang-ky-truc-tuyen.gif" /></a></p>';
	
    echo '<div style="padding:0px 10px">
    	<h1 style="font-family: MyFont; margin-bottom:10px"><a href="xem-tin/'.$row_xem['name_rewrite'].'-'.$row_xem['id'].'.html">'.$row_xem['name'].'</a></h1>
    	<div id="noidung">'.$dangky.$row_xem['content'].$dangky.'</div>
    </div>';
    ?>
    <div style='clear:both; height:20px'></div>
    
    <?php
	$moi = $tc->BaiVietMoiHon($idTin, $idMenu);
	$cu = $tc->BaiVietCuHon($idTin, $idMenu);
	if(!(mysql_num_rows($moi)==0 & mysql_num_rows($cu)==0)) {
		echo '<hr /><div id="cungmuc"><div style="font-size:20px; font-weight:bold; color:#666; padding:20px 0 10px 0; margin-left:15px">Bài viết khác</div>
    		<div style="clear:both; height:10px"></div>';
		while($row_moi = mysql_fetch_array($moi)) {
			echo "
			<div class='item'>
				<a href='{$linkpost}{$row_moi[name_rewrite]}-{$row_moi[id]}.html'><h3>{$row_moi[name]}</h3>
				<img src='".url_articles_thumb_image."{$row_moi[url_hinh]}' alt='{$row_moi[name]}' /></a>
				<div>{$row_moi[description]}</div>
			</div>";
		}//End tin moi hon
		mysql_free_result($moi);
		while($row_cu = mysql_fetch_array($cu)) {
			echo "
			<div class='item'>
				<a href='{$linkpost}{$row_cu[name_rewrite]}-{$row_cu[id]}.html'><h3>{$row_cu[name]}</h3>
				<img src='".url_articles_thumb_image."{$row_cu[url_hinh]}' alt='{$row_cu[name]}' /></a>
				<div>{$row_cu[description]}</div>
			</div>";
		}//End tin moi hon
		mysql_free_result($cu);
		echo '</div>';
	}
	?>
