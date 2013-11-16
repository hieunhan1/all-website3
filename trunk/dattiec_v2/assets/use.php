<div id="slider">
<div class="container"><div class="wt-rotator"><a href="#"></a><div class="desc"></div><div class="preloader"></div><div class="c-panel"><div class="buttons"><div class="prev-btn"></div><div class="play-btn"></div><div class="next-btn"></div></div><div class="thumbnails">
    <ul>
        <?php
        $slider = $tc->slider_banner(1);
        while($row_slider = mysql_fetch_array($slider)){
            echo '<li><a href="'.url_slider_image.$row_slider['url_hinh'].'" title="'.$row_slider["name"].'"></a><a href="'.$row_slider["link"].'" target="_blank">'.$row_slider["name"].'</a></li>';
        }
        ?>
    </ul>
</div></div></div></div></div>