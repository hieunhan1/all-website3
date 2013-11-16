<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/'.$lang.'/"><img src="images/home.jpg" alt="Hoang Ha Logistics" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';

$qr = $tc->support_menu($idMenu);
while($row = mysql_fetch_array($qr)){
	$support = '';
	$qr2 = $tc->support_select($row['id']);
	while($row2 = mysql_fetch_array($qr2)){
		if($row2['skype']=='') $skype = ''; else $skype = '<a href="Skype:'.$row2['skype'].'?chat"><img src="http://mystatus.skype.com/bigclassic/'.$row2['skype'].'" title="'.$row2['name'].'" width="100" alt="'.$row2['name'].'"></a>';
		$support .= '<div class="support">
		<p><a href="ymsgr:sendIM?'.$row2['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row2['yahoo'].'&m=g&t=1" /></a> &nbsp; &nbsp; '.$skype.'</p>
		<p><strong>'.$row2['name'].'</strong></p>
		<p style="font-weight:bold; font-size:90%; color:#666">'.$row2['chucvu'].'</p>
		<p>Cell phone: '.$row2['phone'].'</p>
		<p>Email: '.$row2['email'].'</p></div>';
	}
	$view_support .= '<div class="support_col"><h3>'.$row['name'].'</h3>'.$support.'</div><div style="clear:both; height:20px"></div>';
}


echo $navigator.'<div id="support">
	<h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2>
	'.$view_support.'<div style="clear:both; height:1px"></div>
</div><script type="text/javascript">
$(document).ready(function() {
    var height = $(".support_col").height();
	$(".support_col").height(height);
});
</script>';