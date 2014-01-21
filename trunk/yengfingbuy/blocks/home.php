<div id="home_clo_1">
	<?php
    $qr = $tc->home_about($idMenu);
    $row = mysql_fetch_array($qr);
    echo '<div class="title" style="background:url(images/bg-title.gif) no-repeat">'.$row['name'].'</div>
    <img src="public/images/articles/'.$row['url_hinh'].'" alt="'.$row['name'].'" class="img" />
    <div class="viewpost">'.$row['metaDescription'].'</div>';
    ?>
    
</div>
<div id="home_clo_2">
    <div class="title" style="margin-bottom:15px; background:url(images/bg-title.gif) no-repeat"><?php echo const_home_product; ?></div>
    <?php
    $i = 0;
    $qr = $tc->home_product($lang);
    while($row = mysql_fetch_array($qr)){
        $i++;
        if($i==2 || $i==5 || $i==8) $style = 'style="margin:0 18px"'; else $style = '';
        $str_image .= '<div class="item_sp" '.$style.'>
		<a class="fancybox" href="'.url_products_image.$row['url_hinh'].'" data-fancybox-group="gallery" title="'.$row['name'].'">
			<div class="img"><img src="'.url_products_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div><h3>'.$row['name'].'</h3>
		</a></div>';
    }
	$str_image = '<script type="text/javascript" src="library/extension/source/jquery.fancybox.js"></script>
	<link rel="stylesheet" type="text/css" href="library/extension/source/jquery.fancybox.css" media="screen" />
	
	<div id="photos">'.$str_image.'</div>
	<div style="clear:both; height:30px;"></div>
	
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function(){
			$(".fancybox").fancybox();
		});
	</script>';
	echo $str_image;
    ?>
</div>
<div id="home_clo_3"><?php include_once('blocks/danhmuc_sp.php'); ?></div>
<div style="clear:both; height:20px"></div>