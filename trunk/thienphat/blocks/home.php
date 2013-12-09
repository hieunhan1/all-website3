<div class="content">
    <div style="clear:both; height:15px"></div>
    <div id="home_sp">
    	<div class="simply-scroll simply-scroll-container">
            <div class="simply-scroll-clip">
                <ul id="scroller" class="simply-scroll-list" style="width:2255px;">
				<?php
                $qr = $tc->home_sanpham();
                while($row = mysql_fetch_array($qr)){
                    echo '<li style="list-style:none">
						<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'" target="_blank">
							<img width="250" height="160" src="'.url_product_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" />
							<h3>'.$row['name'].'</h3>
						</a>
					</li>';	
                }
                ?>
                </ul>
            </div>
        </div>
        <script type="text/javascript" src="library/partner/common.js"></script>
		<script type="text/javascript" src="library/partner/jquery.simplyscroll.min.js"></script>
        <script type="text/javascript">(function($){$(function(){$("#scroller").simplyScroll();});})(jQuery);</script>
    </div>
    <div style="clear:both; height:3px; background-color:#DADADA; margin:0 40px 40px"></div>
    
    <div id="home_thienphat">
        <h2>Bạn đang cần gì tại Thiên Phát?</h2>
        <?php
		$qr = $tc->home_info(8);
		while($row = mysql_fetch_array($qr)){
			echo '<div class="item_tp"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html"><h3 style="background-color:#1BB16A">'.$row['name'].'</h3></a><p>'.$row['description'].'</p></div>';
		}
		?>
        <script type="text/javascript" src="library/jquery.corner.js"></script>
        <script type="text/javascript">
        $(document).ready(function(e) {
            $(".item_tp h3").corner("70px");
            $(".item_tp h3").mouseover(function(){
                $(this).css("background-color","#ED3338");
            });
            $(".item_tp h3").mouseout(function(){
                $(this).css("background-color","#1BB16A");
            });
        });
        </script>
    </div>
    <div style="clear:both; height:50px"></div>
    <div style="clear:both; height:3px; background-color:#DADADA; margin:0 40px 40px"></div>
    
    <div id="home_news">
        <h2>Tin tức & hoạt động</h2>
        <?php
		$qr = $tc->home_info(5);
		while($row = mysql_fetch_array($qr)){
			if($row['url_hinh']!='') $image = '<img src="'.url_articles_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" />';
			else $image = '<img src="'.url_no_image.'" alt="'.$row['name'].'" />';
			echo '<div class="item_news"><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$image.'<h4>'.$row['name'].'</h4></a>'.$row['description'].'</div>';
		}
		?>
        <div style="clear:both; height:20px"></div>
    </div>
    <div style="clear:both; height:3px; background-color:#DADADA; margin:0 40px 40px"></div>
    
    <div id="home_maps">
        <h2>Bản đồ Showroom</h2>
        <img src="images/map-home.jpg" width="860" height="374" alt="bản đồ Thiên Phát" />
        <div style="clear:both; height:30px"></div>
    </div>
</div>