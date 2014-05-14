<?php echo '<div id="navigator" style="height:40px"><a href=""><img src="images/home.png" alt="Thiên Long mobile" /></a>'.$tc->navigator($row_menu_one['id']).'</div>'; ?>
<div id="product_detail">
	<div id="product_img">
    	<?php
		echo '<div id="product_img_view"><img src="'.url_product_image.$row_detail['url_hinh'].'" alt="'.$row_detail['name'].'" /></div>';
		$img_list = '<li><img src="'.url_product_image_thumb.$row_detail['url_hinh'].'" alt="'.$row_detail['name'].'" name="'.url_product_image.$row_detail['url_hinh'].'" /></li>';
		
        $qr = $tc->products_image($row_detail['id']);
		if(mysql_num_rows($qr)>0){
		while($row = mysql_fetch_array($qr)){
			$img_list .= '<li><img src="'.url_product_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" name="'.url_product_image.$row['url_hinh'].'" /></li>';
		}
		echo '<link rel="stylesheet" type="text/css" href="library/jsor-jcarousel/skins/tango/skin.css"/>
		<ul id="mycarousel" class="jcarousel-skin-tango">'.$img_list.'</ul>';
		}
		?>
    </div>
	<div id="product_des">
    	<h1><?php echo $row_detail['name']?></h1>
        <div id="thongtin_them">
        	<?php 
			if($row_detail['price']!=0) $price = number_format($row_detail['price'],0,',','.').'<sup> <u>đ</u></sup>'; else $price = 'Liên hệ';
			echo '<div id="price">'.$price.'</div><div id="muahang">Mua ngay</div><div id="thongtin_khac">'.$row_detail['thongtin_them'].'</div>';?>
            <div id="btn_sosanh" class="sosanh_chiase">Thêm vào so sánh <p><?php echo $row_detail['id']?></p></div>
            <div id="chiase" class="sosanh_chiase" onclick="window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(location.href),'','width=600,height=450'); return false;">Chia sẻ facebook</div>
            <div id="sosanh" <?php $id = explode(',',$_SESSION['sosanh']); if(count($id)>2) echo 'style="display:block"'; else echo 'style="display:none"'; ?> >
            	<div id="view_sosanh">Xem so sánh</div>
            </div>
        </div>
        <div id="thongtin_sp">
			<?php echo '<table width="100%" border="0" cellpadding="0" cellspacing="0">
            	<tr><td width="95">CPU:</td><td>'.$row_detail['cpu'].'</td></tr>
            	<tr><td>RAM:</td><td>'.$row_detail['ram'].'</td></tr>
            	<tr><td>Màn hình:</td><td>'.$row_detail['manhinh'].'</td></tr>
				<tr><td>Camera:</td><td>'.$row_detail['camera'].'</td></tr>
            	<tr><td>Camera phụ:</td><td>'.$row_detail['camera_phu'].'</td></tr>
            	<tr><td>PIN:</td><td>'.$row_detail['pin'].'</td></tr>
            	<tr><td>OS:</td><td>'.$row_detail['os'].'</td></tr>
            	<tr><td>Quay phim:</td><td>'.$row_detail['quayphim'].'</td></tr>
            	<tr><td>Bộ nhớ trong:</td><td>'.$row_detail['bonhotrong'].'</td></tr>
            	<tr><td>Thẻ nhớ:</td><td>'.$row_detail['thenho'].'</td></tr>
            </table>';?>
        </div>
    </div>
    <div style="clear:both; height:30px"></div>
    <div id="product_content" class="view_post">
    	<?php echo $row_detail['content']?>
    </div>
    
    <div id="product_right">
    	<div id="danhgia_sp">
    		<div class="product_right_title">Đánh giá sản phẩm</div>
            <div id="ajax_danhgia"></div>
            <?php
            $qr = $tc->danhgia_sp($row_detail['id']);
			$total = mysql_num_rows($qr);
			if($total > 0){
				while($row = mysql_fetch_array($qr)){
					echo '<div class="item_danhgia"><h6>'.$row['name'].'</h6><p>'.$row['content'].'</p></div>';
				}
				if($total > 3) $viewmore = '<div style="width:auto; float:right"><a href="javascript:void();" id="viewmore_danhgia">Xem thêm</a></div>';
			}
			echo '<div style="clear:both; height:20px"><div style="width:auto; float:left; font-weight:bold"><a href="javascript:void();" id="add_danhgia_sp">Thêm đánh giá</a></div>'.$viewmore.'</div>';
			?>
        </div>
        
    	<div id="danhgia_sp">
    		<?php
            $qr = $tc->dienthoai_cungmuc($row_detail['id'],$row_detail['price']);
			if(mysql_num_rows($qr)>0){
				echo '<div class="product_right_title">'.$row_menu_one['name'].' CÙNG MỨC GIÁ</div>';
				while($row = mysql_fetch_array($qr)){
					if($row['price']!=0) $price = number_format($row['price'],0,',','.').'<sup> <u>đ</u></sup>'; else $price = 'Liên hệ';
					echo '<div class="item_mucgia">
						<a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">
							<div class="item_mucgia_img"><img src="'.url_product_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" /></div>
							<h6>'.$row['name'].'</h6>
						</a>
						<p>'.$price.'</p>
					</div>';
				}
			}
			?>
        </div>
        
        <div id="right_banner" style="clear:both; margin-bottom:30px">
			<?php
            $qr = $tc->slider_banner(2);
            while($row = mysql_fetch_array($qr)){
                echo '<div class="item_banner">
                    <img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" />
                    <div class="title_banner"><a href="'.$row['link'].'" title="'.$row['name'].'"><h4>'.$row['name'].'</h4></a></div>
                </div>';
            }
            ?>
        </div>
        
        <div id="right_news">
        	<div class="product_right_title" style="margin:0">Thông tin mới</div>
			<?php
            $qr = $tc->thon_tin_moi();
            while($row = mysql_fetch_array($qr)){
                echo '<div class="item_news">
                    <a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html" title="'.$row['name'].'"><img src="'.url_detail_image_thumb.$row['url_hinh'].'" alt="'.$row['name'].'" />
                    <h5>'.$row['name'].'</h5></a>
                </div>';
            }
            ?>
        </div>
    </div>
</div>

<div id="popupContact">
	<div style="width:950px;height:30px; float:right; text-align:right; position:absolute; z-index:1300;">
		<img src="images/close.png" alt="close" class="popupContactClose" />
	</div>
	<div style="clear:both; height:15px"></div>
	<div style="clear:both; height:15px; background-color:#FFF"></div>
	
	<div id="content_popup"><img src="images/loading.gif" alt="loading" /></div>
</div>
<div id="backgroundPopup"></div>

<script type="text/javascript" src="library/jsor-jcarousel/lib/jquery.jcarousel.min.js"></script>
<script type="text/javascript">
jQuery(document).ready(function() {
	jQuery('#mycarousel').jcarousel();
	$("#mycarousel li img").click(function(){
		var src = $(this).attr("name");
		$("#product_img_view").html('<img src="' + src + '" alt="" />');
	});
});
</script>
<script type="text/javascript">
$(document).ready(function(e) {
	$(".popupContactClose").live("click",function(){
		disablePopup();
	});
	
	/*mua hang*/
	$("#muahang").click(function(){
		var id = $("#btn_sosanh p").html();
		$.post("ajax.php",{view_muahang:1,id:id},function(data){
			$("#content_popup").html(data);
			sroll_top();
			centerPopup("fix");
			loadPopup();
			$(window).bind("resize", function(){ centerPopup("fix"); });
			return true;
		});
	});
	$("input[name=submit_muahang]").live("click",function(){
		var id = $("#btn_sosanh p").html();
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var phone = $("input[name=phone]").val();
		var diachi = $("input[name=diachi]").val();
		var content = $("textarea[name=content]").val();
		if(name.length<3){
			alert("Họ tên phải hơn 3 ký tự");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Email chưa đúng");
			$("input[name=email]").focus();
			return false;
		}else if(phone.length<10){
			alert("Điện thoại chưa đúng");
			$("input[name=phone]").focus();
			return false;
		}else if(diachi.length<10){
			alert("Địa chỉ hơn 10 ký tự");
			$("input[name=diachi]").focus();
			return false;
		}else{
			$("#form_lienhe").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
			$.post("ajax.php",{dathang:1,name:name,email:email,phone:phone,diachi:diachi,content:content,id:id,link_sp:window.location.pathname},function(data){
				if(data!="0"){
					$("#form_lienhe").html('<p style="color:#0054B1; font-weight:bold; padding:30px 0 60px;">Đặt hàng thành công, sau 5 giây tự động đóng hộp thoại</p>');
					setTimeout(function(){ disablePopup(); },5000);
				}else $("#form_lienhe").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Không gửi được. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
	
	/*so sanh*/
	$.post("ajax.php",{autoview_sosanh:1},function(data){
		$("#sosanh").prepend(data);
	});
	$("#btn_sosanh").click(function(){
		var id = $("#btn_sosanh p").html();
		$.post("ajax.php",{addsosanh:1,id:id},function(data){
			$("#sosanh").css('display','block');
			$("#sosanh").prepend(data);
		});
	});
	$(".delete_sosanh").live("click",function(){
		var id = ($(this).attr('class')).split("delete_sosanh_");
		$.post("ajax.php",{delsosanh:1,id:id[1]},function(data){
			$(".item_sosanh_" + id[1]).css('display','none');
		});
	});
	$("#view_sosanh").click(function(){
		$.post("ajax.php",{view_sosanh:1},function(data){
			if(data!=''){
				$("#content_popup").html(data);
				sroll_top();
				centerPopup("absolute");
				loadPopup();
				$(window).bind("resize", function(){ centerPopup("absolute"); });
				return true;
			}else{
				alert("Bạn chọn thêm 1 sản phẩm nữa để so sánh");
				return false;
			}
		});
	});
	
	/*danh gia*/
	$(".item_danhgia").css('display','none');
	$(".item_danhgia:lt(3)").css('display','block');
	$("#viewmore_danhgia").click(function(){
		$("#viewmore_danhgia").css('display','none');
		$(".item_danhgia").css('display','block');
	});
	$("#add_danhgia_sp").click(function(){
		$.post("ajax.php",{form_danhgia_sp:1},function(data){
			$("#content_popup").html(data);
			sroll_top();
			centerPopup("fix");
			loadPopup();
			$(window).bind("resize", function(){ centerPopup("fix"); });
			return true;
		});
	});
	$("input[name=submit_danhgia]").live("click",function(){
		var id = $("#btn_sosanh p").html();
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var content = $("textarea[name=content]").val();
		if(name.length<3){
			alert("Họ tên phải hơn 3 ký tự");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Email chưa đúng");
			$("input[name=email]").focus();
			return false;
		}else if(content.length<10){
			alert("Nội dung phải hơn 10 ký tự");
			$("textarea[name=content]").focus();
			return false;
		}else{
			$("#form_lienhe").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
			$.post("ajax.php",{add_danhgia_sp:1,id:id,name:name,email:email,content:content},function(data){
				if(data!="0"){
					$("#ajax_danhgia").prepend(data);
					disablePopup();
				}else $("#form_lienhe").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Không gửi được. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
});
</script>