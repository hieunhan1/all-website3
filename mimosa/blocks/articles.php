<div id="view_post">
    <?php
    echo '<h1>'.$row_detail['name'].'</h1>'.$row_detail['content'];
    ?>
</div>
<?php
$qr = $tc->tintuc_khac($row_detail['id'],$row_menu_one['id']);
if(mysql_num_rows($qr)>0){
    echo '<hr /><div id="other"><div class="title2">'.const_tin_khac.'</div>';
    while($row = mysql_fetch_array($qr)){
        echo '<li><a href="'.$lang.'/'.$row_menu_one['url'].$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></li>';
    }
    echo '</div><div style="clear:both; height:30px"></div>';
}
?>