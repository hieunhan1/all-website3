var popupStatus = 0;
function loadPopup() {
    if(popupStatus==0) {
        $("#backgroundPopup").css({"opacity": "0.3"});
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

function browserName(){
   var Browser = navigator.userAgent;
   if (Browser.indexOf('MSIE') >= 0){
    Browser = 'MSIE';
   }
   else if (Browser.indexOf('Firefox') >= 0){
    Browser = 'Firefox';
   }
   else if (Browser.indexOf('Chrome') >= 0){
    Browser = 'Chrome';
   }
   else if (Browser.indexOf('Safari') >= 0){
    Browser = 'Safari';
   }
   else if (Browser.indexOf('Opera') >= 0){
      Browser = 'Opera';
   }
   else{
    Browser = 'UNKNOWN';
   }
   return Browser;
}

function browserVersion(){
   var index;
   var version = 0;
   var name = browserName();
   var info = navigator.userAgent;
   index = info.indexOf(name) + name.length + 1;
   version = parseFloat(info.substring(index,index + 3));
   return version;
}

/*dinh dang so javascript*/
Number.prototype.formatMoney = function(c, d, t){
	var n = this, 
	c = isNaN(c = Math.abs(c)) ? 2 : c, 
	d = d == undefined ? "." : d, 
	t = t == undefined ? "," : t, 
	s = n < 0 ? "-" : "", 
	i = parseInt(n = Math.abs(+n || 0).toFixed(c)) + "", 
	j = (j = i.length) > 3 ? j % 3 : 0;
	return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
};

function facebook_share(link_share){
	if(link_share=='') link_share = location.href;
	myWindow=window.open('https://www.facebook.com/sharer/sharer.php?u='+encodeURIComponent(link_share),'','width=600,height=450');
	myWindow.focus();
	return false;
}

function SearchGoogle(id_txt_search){
	var key = document.getElementById(id_txt_search).value;
	var site = document.domain;
	var qs = key + "+site:" + site;
	var url = "http://www.google.com.vn/#sclient=psy-ab&hl=vi&site=&source=hp&q=" + qs + "&pbx=1&oq=" + qs + "&aq=f&aqi=&aql=1&gs_sm=e";
	window.open(url, "_blank");
	return false;
}

function sroll_top(){
	$("html, body").animate({ scrollTop: 0 }, 500);
	return false;
}

$(document).ready(function($){
	$("#nav li").hover(function(){
		$(this).find('ul:first').css({visibility: 'visible', display: 'none'}).show(200);
	}, function(){
		$(this).find('ul:first').css({visibility: 'hidden'});
	});
	
	$("#txtSearch").keydown(function(e){
		if(e.keyCode==13) SearchGoogle("txtSearch");
	});
	$("input[name=btnSearch]").click(function(){
		SearchGoogle("txtSearch");
	});
	
	$('#run_top').click(function(){
		sroll_top();
	});
	
	if(browserVersion()!=7 && browserVersion()!=8){
		$("#support_online").corner("top 10px");
		$("#nav li a, .ds_chinhanh_item, .select_chinhanh, .box_right").corner("5px");
		$("#slider, .home_info").corner("15px");
	}
	
	/*support*/
	$.post("ajax.php",{support_online:"support_online"},function(data){
		$("#ajax_support_data").html(data);
		$("#loading_support").hide();
	})
	
	/*chi nhanh*/
	
	$("#btn_support").click(function(){
		$("#ajax_support").toggle(100);
		
	});
	$(".ds_chinhanh_item").live("click", function(){
		var id = ($(this).attr('class')).split(" ");
		$(".ds_chinhanh_item").css({"background-color":"#FF9","color":"#333","font-weight":"100"});
		$(this).css({"background-color":"#F00","color":"#FFF","font-weight":"bold"});
		
		$(".ds_support").hide();
		$("." + id[1]).show();
	});
	
	$(".chinhanh").hide();
	$("#chinhanh1").show();
	$(".select_chinhanh").click(function(){
		var id = ($(this).attr('class')).split(" ");
		
		$(".select_chinhanh").css({"background-color":"#FF9","color":"#333"});
		$(this).css({"background-color":"#F00","color":"#FFF"});
		
		$(".chinhanh").hide();
		$("#" + id[1]).show();
	});
	
	/*lien he*/
	$("input[name=btnSend]").click(function(){
		var name = $("input[name=name]").val();
		var email = $("input[name=email]").val();
		var phone = $("input[name=phone]").val();
		var diachi = $("input[name=diachi]").val();
		var message = $("textarea[name=message]").val();
		if(name.length<2){
			alert("Nhập họ tên");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Email chưa đúng");
			$("input[name=email]").focus();
			return false;
		}else if(message.length<10){
			alert("Nội dung phải hơn 10 ký tự");
			$("textarea[name=message]").focus();
			return false;
		}else{
			$("#form").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
			$.post("ajax.php",{contact:"contact",name:name,email:email,phone:phone,diachi:diachi,message:message,lang:"<?php echo $lang; ?>"},function(data){
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:#ff8400; font-weight:bold; padding:30px 0 60px;">Liên hệ thành công.</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Lỗi. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
});