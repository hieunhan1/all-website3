<?php
$qr = $tc->slider_banner(2);
if(mysql_num_rows($qr)>0){
	$row = mysql_fetch_array($qr);
?>
<div id="popupContact">
    <div id="content_popup">
    	<div style="text-align:right"><a href="javascript:;" id="popupContactClose"><img src="images/close.png" alt="hongcuong" /></a></div>
        <div style="text-align:center; padding:10px">
        	<a href="<?php echo $row['link'];?>"><img src="<?php echo url_slider_image.$row['url_hinh'];?>" alt="<?php echo $row['name'];?>" /></a>
        </div>
    </div>
</div></div>
<div id="backgroundPopup"></div>
<script type="text/javascript">
$(document).ready(function(e) {
	var height = $("#content_popup").height();
	$("#popupContact").height(height);
	centerPopup("absolute");
	loadPopup();
	$(window).bind("resize", function(){ centerPopup("absolute"); });
	$("#backgroundPopup, #popupContactClose").click(function(){
		disablePopup();
	});
});
</script>
<?php }?>