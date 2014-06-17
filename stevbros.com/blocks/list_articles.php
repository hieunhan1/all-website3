<?php
$from = (($page - 1) * max_news);
$select = 'name,name_rewrite,url_hinh,description,date_update,menu_id';
$table = 'info';
$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
$limit = "LIMIT {$from},".max_news;
$list = $tc->list_item($select,$table,$where,$limit);

include_once('blocks/right.php');

if($list){
	$total = mysql_num_rows($list);
	if($total > 1){
		$view_post .= $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title']);
		$view_post .= '<div id="left">';
		while($row = mysql_fetch_array($list)){
			if(preg_match("/15/i",$row['menu_id'])) $date = '<div class="date">'.$tc->datetime($row['date_update']).'</div>'; else $date = '';
			$view_post .= '<div class="item_info">'.$date.'
			<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'">
			<img src="'.url_detail_thumb_image.$row['url_hinh'].'" alt="'.$row['name'].'" /><h3>'.$row['name'].'</h3></a><h6>'.$row['description'].'</h6></div>';
		}
		mysql_free_result($list);
		
		$view_post .= '</div>';
	}elseif($total==1){
		$row = mysql_fetch_array($list);
		header('location: http://'.$domain.'/'.$row_menu_one['url'].$row['name_rewrite'].'.html');
	}else $view_post = $tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title']).'<div id="left"><div style="padding:20px; height:500px">Information is being updated...</div></div>';
}

$view_post .= $view_right;
$phantrang = $tc->phantrang($row_menu_one['url'],$page,max_news,'id',$table,$where);
$view_post .= "<div style=\"clear:both; height:1px\"></div><div id=\"phantrang\">{$phantrang}</div>";