<div id="right">
    <div class="box_right">
        <div class="box_right_title"><img src="images/icon-right.jpg" alt="Video nổi bật" /> Video nổi bật</div>
        <?php
        $qr = $tc->video_home(2,$lang);
        while($row = mysql_fetch_array($qr)){
            echo '<div class="box_right_video">
            <a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">
            <div class="box_right_video_img"><img src="'.url_video_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
            <div class="play_video"></div>
            <img src="images/video.gif" alt="video" style="width:238px; margin-bottom:3px" />
            <h4>'.$row['name'].'</h4></a>
        </div>';
        }
        ?>
    </div>
    
    <div class="box_right">
        <div class="box_right_title"><img src="images/icon-thong-tin.jpg" alt="Video nổi bật" /> Thông tin cần biết</div>
        <?php
        $qr = $tc->menu(10,4);
        while($row = mysql_fetch_array($qr)){
            echo '<div class="box_right_hocvien"><a href="'.$row['url'].'">'.$row['name'].'</a></div>';
        }
        ?>
    </div>
    
    <div class="box_right">
        <div class="box_right_title"><img src="images/newsEventsIcon.jpg" alt="Video nổi bật" /> Thông báo mới</div>
        <?php
        $qr = $tc->info_danhmuc(66,3);
        while($row = mysql_fetch_array($qr)){
            echo '<div class="box_right_info"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><div class="box_right_info_img"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div><h3>'.$row['name'].'</h3></a></div>';
        }
        ?>
    </div>
    
    <!--
    <div class="box_right">
        <iframe src="//www.facebook.com/plugins/likebox.php?href=https%3A%2F%2Fwww.facebook.com%2Ftruong.day.am.thuc.netspace&amp;width=238&amp;height=340&amp;colorscheme=light&amp;show_faces=true&amp;header=true&amp;stream=false&amp;show_border=true" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:238px; height:300px;" allowTransparency="true"></iframe>
    </div>
    
    <div class="box_right">
        <a href="http://www.youtube.com/channel/UC3NYiSS1mSe7YXXAeSFqZcw?feature=watch" title="youtube trường Netspace">
            <img alt="youtube trường Netspace" src="upload/images/slider_banner/Youtube.png" style="margin:5px 0; width:238px" />
        </a>
    </div>
    -->
</div>