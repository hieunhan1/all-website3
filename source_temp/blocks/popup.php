<div id="popupContact">
    <div id="popupContactClose">
        <a href="javascript:;"><img src="images/close.png" alt="sản phẩm" /></a>
    </div>
    <div style="clear:both; height:15px"></div>
    
    <div id="content_popup">
        <p style="margin-bottom:5px"><img src="public/poster.jpg" alt="Ai sẽ là hoa hậu đại dương" style="border:solid 1px #999" /></p>
        <p align="center"><a href="public/Ban_DK_Du_Thi_Hoa_Hau_Dai_Duong_VN_2014.docx"><img src="images/registor.gif" alt="registor hoa hậu đại dương" /></a></p>
    </div>
</div>
<div id="backgroundPopup"></div>
<script type="text/javascript">
$(document).ready(function() {
    var height = $("#popupContact").height();
    $("#popupContact").height(height);
    centerPopup("absolute");
    loadPopup();
    $(window).bind("resize", function(){ centerPopup("absolute"); });
	$("#popupContact").click(function(){
		disablePopup();
	});
	setTimeout(function(){ disablePopup(); }, 10000);
	$("#backgroundPopup").click(function() { 
        disablePopup(); 
    });
});</script>