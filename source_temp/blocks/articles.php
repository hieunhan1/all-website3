<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/?lang='.$lang.'"><img src="images/home.jpg" alt="Hoang Ha Logistics" /></a>'.$tc->navigator($idMenu,$lang).'</div>';

if($total > 1){
	echo $view_left;
	echo '<div id="right">'.$navigator.'<div class="viewpost">
		<h1 style="font-size:24px">'.$row_detail['name'].'</h1><div class="date">'.const_date_update.date('d-m-Y H:i',strtotime($row_detail['date_update'])).'</div>'.$row_detail['content'].'
		<div style="clear:both; height:30px"></div>
	</div></div>';
}else{
	echo '<div style="clear:both; height:20px"></div><div class="viewpost">
		<h1 style="font-size:24px">'.$row_detail['name'].'</h1><div class="date">'.const_date_update.date('d-m-Y H:i',strtotime($row_detail['date_update'])).'</div>'.$row_detail['content'].'
		<div style="clear:both; height:30px"></div>
	</div>';
}

echo '<div style="clear:both; height:10px"></div>';
?>