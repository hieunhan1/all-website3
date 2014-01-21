<div class="danhmuc_sp">
    <div class="title" style="background:url(images/bg-dmsp-title.gif) no-repeat"><?php echo const_home_danhmuc_sp; ?></div>
    <?php
    $id_dmsp = $tc->danhmuc_sp($lang);
    
    $qr = $tc->menu($id_dmsp,6,$lang);
    while($row = mysql_fetch_array($qr)){
        if( trim($row['url'],'/') != $danhmuc ) echo '<li><a href="'.$row['url'].'">'.$row['name'].'</a></li>';
		else echo '<li><a href="'.$row['url'].'" style="color:#F00">'.$row['name'].'</a></li>';
    }
    ?>
</div>