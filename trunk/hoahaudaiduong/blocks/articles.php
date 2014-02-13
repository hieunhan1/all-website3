<?php
include_once('blocks/articles_right.php');
if($total_right > 1){
	$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.png" alt="" /></a>'.$tc->navigator($idMenu).'</div>';
	echo $navigator.'<div id="left"><div class="viewpost">
		<h1 style="font-size:24px">'.$row_detail['name'].'</h1><div class="date">'.const_date_update.date('d-m-Y H:i',strtotime($row_detail['date_update'])).'</div>'.$row_detail['content'].'
		<div style="clear:both; height:30px"></div>
	</div></div>'.$view_right;
}else{
	echo '<div style="clear:both; height:20px"></div><div class="viewpost">
		<h1 style="font-size:24px">'.$row_detail['name'].'</h1><div class="date">'.const_date_update.date('d-m-Y H:i',strtotime($row_detail['date_update'])).'</div>'.$row_detail['content'].'
		<div style="clear:both; height:30px"></div>
	</div>';
}

echo '<div style="clear:both; height:10px"></div>';