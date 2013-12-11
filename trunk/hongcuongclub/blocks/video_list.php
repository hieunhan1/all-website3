<?php
$from = (($page - 1) * max_limit_4);
$select = 'id,name,name_rewrite,url_hinh,metaDescription,link';
$table = 'video';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ";
$limit = "LIMIT {$from},".max_limit_4;
$list = $tc->list_item($select,$table,$where,$limit);
$total = mysql_num_rows($list);

if($total > 0){
	$i = 0;
	while($row = mysql_fetch_array($list)){
		$i++;
		if($i%2 == 1) $style = 'style="float:left"'; else $style = 'style="float:right"';
		$link = $row['link'].'?origin='.$domain.'&amp;rel=0';
		
		$str_video .= '<div class="box_video" '.$style.'>
			<a href="'.$link.'" class="fancybox fancybox.iframe"><h3>'.$row['name'].'</h3></a>
			<div class="box_video_img"><a href="'.$link.'" class="fancybox fancybox.iframe"><img src="'.url_library_video.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
			<div class="box_video_info">'.$row['metaDescription'].'</div>
		</div>';
	}
	$phantrang = $tc->phantrang($danhmuc,$page,max_limit_4,'id',$table,$where);
	$str_video .= '<div style="clear:both; height:10px"></div><div id="phantrang">'.$phantrang.'</div>';
}else{
	$str_video = '<div style="padding:0 50px">update..</div>';
}

echo '<div id="content">
	<div id="navigator">
		<a href="http://'.$domain.'">Trang chủ</a>
		'.$tc->navigator($idMenu).'
	</div>
	<h2>'.$row_menu_one['metaDescription'].'</h2>
	<script type="text/javascript" src="library/extension/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="library/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />
	<ul>'.$str_video.'</ul>
	<script type="text/javascript" charset="utf-8">
		$(document).ready(function(){
			$(".fancybox").fancybox();
		});
	</script>
	<div style="clear:both; height:10px"></div>
</div>';
