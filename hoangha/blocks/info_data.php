<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/'.$lang.'/"><img src="images/home.jpg" alt="Hoang Ha Logistics" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';
echo $navigator.'<div class="viewpost">
<h1 style="font-size:24px">'.$row_detail['name'].'</h1><div class="date">Cập nhật '.date('d-m-Y H:i',strtotime($row_detail['date_update'])).'</div>'.$row_detail['content'].'
<div style="clear:both; height:1px"></div></div>';

echo '<div style="clear:both; height:10px"></div>';

$qr = $tc->info_other($row_detail['id'],$row_menu_one['id']);
if(mysql_num_rows($qr)>0){
    echo '<hr /><div id="other"><div class="title2">'.const_tin_khac.'</div>';
    while($row = mysql_fetch_array($qr)){
        echo '<li><a href="'.$lang.'/'.$row_menu_one['url'].$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></li>';
    }
    echo '</div><div style="clear:both; height:30px"></div>';
}