<?php
$qr = $tc->slider_banner(6, $lang);
if(mysql_num_rows($qr) > 0){
	$row = mysql_fetch_array($qr);
?>
<div id="popupContact">
    <div id="content_popup">
    	<div style="text-align:right; padding:5px 5px 0 0; background-color:#FFF"><a href="javascript:;" id="popupContactClose"><img src="images/close.png" alt="" /></a></div>
    	<div style="text-align:center"><?php echo '<img src="'.url_slider_image.$row['url_hinh'].'" alt="'.$row['name'].'" />';?></div>
    </div>
</div></div>
<div id="backgroundPopup"></div>

<?php
	$script_popup_banner = '<script type="text/javascript">
	$(document).ready(function(e) {
		//sroll_top();
		var height = 440; //$("#popupContact").height();
		$("#popupContact").height(height);
		centerPopup("fix");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("fix"); });
		$("#backgroundPopup, #popupContactClose, input[name=btn_huy_nop_hs]").click(function(){
			disablePopup();
		});
	});
	</script>';
}
?>