<div id="popupContact">
    <div id="content_popup" style="width:400px">
    	<div style="text-align:right; padding-right:5px; background-color:#FFF"><a href="javascript:;" id="popupChatClose"><img src="images/close.png" alt="close chat" title="Close" /></a></div>
    	<div style="text-align:center">
        	<iframe src="http://www.dayamthuc.vn/chat_v2/index.php" style="width:100%; height:410px; border:none"></iframe>
        </div>
    </div>
</div></div>
<div id="backgroundPopup"></div>
<script type="text/javascript">
$(document).ready(function(e) {
	var height = 410;
	$("#popupContact").height(height);
	centerPopup("fix");
	loadPopup();
	$(window).bind("resize", function(){ centerPopup("fix"); });
	$("#popupChatClose").click(function(){
		disablePopup();
	});
});
</script>