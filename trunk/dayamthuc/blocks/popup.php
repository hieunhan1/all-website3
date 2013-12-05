
	
    <?php
	if($_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI']=="www.dayamthuc.vn/")
	{
		echo '
		<div id="popup">
			<a href="http://www.dayamthuc.vn/xem-tin/chuong-trinh-dao-tao-bep-gia-dinh-cao-cap-tet-2014-341.html" ><img src="images/bep gia dinh.png" alt="bếp gia đình" /></a>
		    <div id="close_popup">&nbsp;</div>
		</div>	
		';
	}
	/*$popup = $tc->thongthinpopup();
	$total = mysql_num_rows($popup);
	$i = 0;
	while($row_popup = mysql_fetch_array($popup)){
		$i++;
		echo '<div class="item_popup item_popup_'.$i.'">
			<div class="img_popup"><a href="'.$linkpost.$row_popup[name_rewrite].'-'.$row_popup[id].'.html"><img src="'.url_articles_thumb_image.$row_popup['url_hinh'].'" alt="'.$row_popup['name'].'" /></a></div>
			<div class="title_popup"><a href="'.$linkpost.$row_popup[name_rewrite].'-'.$row_popup[id].'.html"><strong>'.$row_popup['name'].'</strong></a></div>
		</div>';
	}*/
	?>

<div id="open_popup"><img src="images/max.png" alt="max" /></div>

<div id="popupContact">
	<div id="form_chon_tp">
        <div class="content_pp">			<div id="close_popupContact"><a title="Đóng">x</a></div>
        	<!--<div id="title_pp">Chọn cơ sở để đăng ký học:</div>-->
            <div class="select_tp">
            	<div class="item_tp item_tp_1"><p class="check check_1">&nbsp;</p><b>Tp.HCM</b></div>
            	<div class="item_tp item_tp_2"><p class="check check_2">&nbsp;</p><b>Đà Nẵng</b></div>
            	<div class="item_tp item_tp_3"><p class="check check_3">&nbsp;</p><b>Cần Thơ</b></div>
            </div>
        </div>
    </div>
</div>
<!--<div id="backgroundPopup"></div>-->
<script type="text/javascript">
$(document).ready(function() {
	<?php
	if(!@$_COOKIE['tinhthanh']){		
		echo 'centerPopup("fix");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("fix"); });';
	}	
	?>	$("#close_popupContact").click(function(){		$.post("ajax.php",{tinhthanh:"tinhthanh",id:1},function(){			setTimeout(function(){				$("#form_chon_tp").css("display","none");				window.location.reload();				disablePopup();			},00);		});	});
	$(".item_tp").click(function(){
		var id = ($(this).attr("class")).split(" item_tp_");
		$(".check_" + id[1]).html('<img src="images/_12.png" alt="" />');
		$.post("ajax.php",{tinhthanh:"tinhthanh",id:id[1]},function(){
			setTimeout(function(){
				$("#form_chon_tp").css("display","none");
				window.location.reload();
				disablePopup();
			},500);
		});
		return true;
	});
	$("#change_tinhthanh").click(function(){
		$("#form_chon_tp").css("display","block");
		centerPopup("fix");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("fix"); });
		return true;
	});
});
</script>

<script type="text/javascript">
	$("#close_popup").click(function(){
		$("#popup").hide(200);
	});
</script>