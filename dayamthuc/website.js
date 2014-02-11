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
			"position": position,						"bottom": 0,			"right": 0
			/*"top": windowHeight/2-popupHeight/2,
			"left": windowWidth/2-popupWidth/2*/
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
	$('#txtSearch').click(function(){
		$('#txtSearch').css('background','url(images/txtSearch2.png)');
	});
	
	$('.itemphoto').mouseover(function(){
		var id = $(this).attr('id');
		$('.'+id).css('visibility','visible');
	});
	$('.itemphoto').mouseout(function(){
		var id = $(this).attr('id');
		$('.'+id).css('visibility','hidden');
	});
	
	$('input[name=btnSearch]').click(function(){
		var txtSearch = $('input[name=txtSearch]').val();
		$('form[name=frmSearch]').attr('action', 'search/' + txtSearch + '-1.htm');
	});
	var left = $('#left').height();
	var right = $('#right').height();
	if(left < 1000) $('.boxleft').height(right);
	
	$('#printer').click(function(){
		$('#slider, #right, .titleleft, .titlecenter, .titleright, .titleicon, #print, #support, #cungmuc, #footer, #menu').hide();
		$('body, #bgmenu, .boxleft').css('background', 'none');
		$('.boxleft').css('width','1000px');
		$('.boxleft').css('font-size','15px');
	});
	
	
	/* script disbale copy */
	/*
	var isNS = (navigator.appName == "Netscape") ? 1 : 0;
	
	if(navigator.appName == "Netscape") document.captureEvents(Event.MOUSEDOWN||Event.MOUSEUP);
	
	function mischandler(){
	return false;
	}
	
	function mousehandler(e){
	var myevent = (isNS) ? e : event;
	var eventbutton = (isNS) ? myevent.which : myevent.button;
	if((eventbutton==2)||(eventbutton==3)) return false;
	}
	document.oncontextmenu = mischandler;
	document.onmousedown = mousehandler;
	document.onmouseup = mousehandler;
	var isCtrl = false;
	document.onkeyup=function(e)
	{
	if(e.which == 17)
	isCtrl=false;
	}
	
	document.onkeydown=function(e)
	{
	if(e.which == 17)
	isCtrl=true;
	if(((e.which == 85) || (e.which == 117) || (e.which == 65) || (e.which == 97) || (e.which == 67) || (e.which == 99)) && isCtrl == true)
	{
	// alert(‘Keyboard shortcuts are cool!’);
	return false;
	}
	}
	*/
});