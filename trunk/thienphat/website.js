var popupStatus = 0;
function loadPopup() {
    if(popupStatus==0) {
        $("#backgroundPopup").css({"opacity": "0.9"});
        $("#backgroundPopup").fadeIn("slow");
        $("#popupContact").fadeIn("slow");
        popupStatus = 1;
    }
}
function disablePopup() {
    if(popupStatus==1) {
        $("#backgroundPopup").fadeOut("slow");
        $("#popupContact").fadeOut("slow");
        popupStatus = 0;
    }
}
function centerPopup(position) {
    var windowWidth = document.documentElement.clientWidth;
    var windowHeight = document.documentElement.clientHeight;
    var popupHeight = $("#popupContact").height();
    var popupWidth = $("#popupContact").width();
	if(position=="fix"){
		$("#popupContact").css({
			"position": position,
			"top": windowHeight/2-popupHeight/2,
			"left": windowWidth/2-popupWidth/2
		});
	}else{
		$("#popupContact").css({
			"position": position,
			"top": "50px",
			"left": windowWidth/2-popupWidth/2
		});
	}
    $("#backgroundPopup").css({"height": windowHeight});
}

$(document).ready(function(){
	$("#nav li").hover(function(){
		$(this).find('ul:first').css({visibility: 'visible', display: 'none'}).show(200);
	}, function(){
			$(this).find('ul:first').css({visibility: 'hidden'});
	});
});