<div id="footer">
	<div style="width:980px; margin:auto">
    	<div class="col_foo">
        	<h5>Bài viết mới</h5>
            <div class="item_f1">
            <?php
            $news = $tc->home_info_foo();
			while($row_news = mysql_fetch_array($news)){
				echo '<a href="'.$tc->link_detail($row_news['menu_id']).$row_news['name_rewrite'].'.html" title="'.$row_news['name'].'">'.$row_news['name'].'</a>';
			}
			?>
            </div>
        </div>
    	<div class="col_foo">
        	<h5>Bài viết phổ biến</h5>
            <?php
            $info_cm = $tc->home_info_foo_comment();
			while($row_info_cm = mysql_fetch_array($info_cm)){
				echo '<div class="item_f2">
					<a href="'.$tc->link_detail($row_info_cm['menu_id']).$row_info_cm['name_rewrite'].'.html" title="'.$row_info_cm['name'].'"><img src="'.url_detail_thumb_image.$row_info_cm['url_hinh'].'" alt="'.$row_info_cm['name'].'" />'.$row_info_cm['name'].'</a>
					<p>'.$row_info_cm['total'].' comments</p>
					<div style="clear:both; height:1px"></div>
				</div>';
			}
			?>
        </div>
    	<div class="col_foo">
        	<h5>Danh mục</h5>
            <div class="item_f1">
            <?php
            $menu_foo = $tc->menu(15,5);
			while($row_menu_foo = mysql_fetch_array($menu_foo)){
				echo '<a href="'.$row_menu_foo['url'].'" title="'.$row_menu_foo['title'].'">'.$row_menu_foo['name'].'</a>';
			}
			?>
            </div>
        </div>
    	<div class="col_foo">
        	<h5>Liên hệ</h5>
            <div id="contact_foo">
                <p class="contact_title">Tên</p>
                <p class="contact_text"><input type="text" name="name_contact_foo" class="input_foo" /></p>
                <p class="contact_title">Điện thoại</p>
                <p class="contact_text"><input type="text" name="phone_contact_foo" class="input_foo" /></p>
                <p class="contact_title">Email</p>
                <p class="contact_text"><input type="text" name="email_contact_foo" class="input_foo" /></p>
                <p class="contact_title">Lời nhắn</p>
                <p class="contact_textarea"><textarea name="content_contact_foo" class="input_foo"></textarea></p>
                <p class="contact_submit"><input type="button" name="submit_contact_foo" value="Gửi đi" class="input_foo" /></p>
            </div>
        </div>
        <div style="clear:both; height:20px"></div>
        <div style="clear:both; color:#FFF; font-size:90%; margin:0 20px; padding:20px 0; border-top:solid 1px #5F92AB">
        	<span style="float:left"><?php echo $row_config['footer']; ?></span>
            <span style="float:right">PMI, PMBOK, PMP®, CAPM, PgMP, PMI-ACP are registered marks of the Project Management Institute, Inc</span>
        </div>
    </div>
</div>