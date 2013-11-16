<?php
$qr = $tc->info_left($menu_root);
while($row = mysql_fetch_array($qr)){
	if($dt!=$row['name_rewrite']) $view_left .= '<div class="left_item"><a href="'.$lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].'</a></div>';
	else $view_left .= '<div class="left_item"><a href="'.$lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" style="color:#ED1E28; background:url(images/left-icon.gif) no-repeat left; background-position:0px -60px">'.$row['name'].'</a></div>';
}
$qr = $tc->support_select($idMenu);
while($row = mysql_fetch_array($qr)){
	if($row['skype']=='') $skype = ''; else $skype = '<a href="Skype:'.$row['skype'].'?chat"><img src="http://mystatus.skype.com/bigclassic/'.$row['skype'].'" title="'.$row['name'].'" width="100" alt="'.$row['name'].'"></a>';
	$support .= '<div class="support">
	<p><a href="ymsgr:sendIM?'.$row['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row['yahoo'].'&m=g&t=1" /></a> &nbsp; &nbsp; '.$skype.'</p>
	<p><strong>'.$row['name'].'</strong></p>
	<p>Cell phone: '.$row['phone'].'</p>
	<p>Email: '.$row['email'].'</p></div>';
}
$support = '<div style="clear:both; height:50px"></div> <div class="support_title">Hỗ trợ</div>'.$support;

$view_left = '<div id="left">'.$view_left.$support.'</div>
<script type="text/javascript">
$(document).ready(function(){
	var left = $("#left").height();
	var right = $("#right").height();
	if(left < right) $("#left").height(right);
});
</script>';

$navigator = '<div id="navigator"><a href="http://'.$domain.'/'.$lang.'/"><img src="images/home.jpg" alt="Hoang Ha Logistics" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';

echo $view_left.'<div id="right">'.$navigator.'<div class="viewpost">
	<h1 style="font-size:24px">'.$row_detail['name'].'</h1><div class="date">'.const_date_update.date('d-m-Y H:i',strtotime($row_detail['date_update'])).'</div>'.$row_detail['content'].'
	<div style="clear:both; height:30px"></div>
</div></div>
<div style="clear:both; height:1px"></div>';