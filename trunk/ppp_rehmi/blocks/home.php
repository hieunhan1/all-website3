<div id="left" class="viewpost">
	<?php
    $qr = $tc->home_info($idMenu);
    $row = mysql_fetch_array($qr);
    echo '<h1>'.$row['name'].'</h1>'.$row['content'];
    ?>
</div>

<div id="right">
    <div id="right_title">Tin tức - Sự kiện</div>
    <?php
    $qr = $tc->home_info_item(6);
    while($row = mysql_fetch_array($qr)){
        echo '<div class="right_item">
            <a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">
            <h3>'.$row['name'].'</h3>
            <div class="right_item_img"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
            </a>
            <p>'.$row['metaDescription'].'</p>
        </div>';
    }
    ?>
</div>