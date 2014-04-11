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
		$(".box_left, .box_info, .muahang").corner("8px");
		$(".title_info").corner("top","8px");
		$("#signin, #form_login").corner("7px");
	}
	
	$("#login").click(function(){
		$("#form_login").show(200);
	});
	$("#cancel_login").click(function(){
		$("#form_login").hide(200);
	});
	
	
	/*nop ho so*/
	$(".btn_nop_hs").click(function(){
		sroll_top();
		
		var height = $("#popupContact").height();
		$("#popupContact").height(height);
		centerPopup("absolute");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("absolute"); });
		$("#backgroundPopup, #popupContactClose, input[name=btn_huy_nop_hs]").click(function(){
			disablePopup();
		});
	});
	$("input[name=btn_nop_hs]").click(function(){
		var tuyendung_id = $.trim($("input[name=tuyendung_id]").val());
		var name = $.trim($("input[name=name]").val());
		var diachi = $.trim($("input[name=diachi]").val());
		var phone = $.trim($("input[name=phone]").val());
		var email = $.trim($("input[name=email]").val());
		var trinhdo = $.trim($("select[name=trinhdo]").val());
		var content = $.trim($("textarea[name=content]").val());
		
		$(".error").html('');
		
		if(name.length < 6){
			$("#name").html('Họ tên phải hơn 6 ký tự');
			$("input[name=name]").focus();
			return false;
		}else if(diachi.length < 6){
			$("#diachi").html('Địa chỉ phải hơn 6 ký tự');
			$("input[name=diachi]").focus();
			return false;
		}else if(phone.length < 10){
			$("#phone").html('Điện thoại phải hơn 10 ký tự');
			$("input[name=phone]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			$("#email").html('Email chưa đúng');
			$("input[name=email]").focus();
			return false;
		}else if(trinhdo == '0'){
			$("#trinhdo").html('Chọn trình độ học vấn.');
			$("select[name=trinhdo]").focus();
			return false;
		}else if(content.length < 50){
			$("#kinhnghiem").html('Kinh nghiệm, giới thiệu bản thân phải hơn 50 ký tự');
			$("textarea[name=content]").focus();
			return false;
		}else{
			$("#form_nop_hs").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
			$.post("ajax.php",{nop_hs:tuyendung_id,name:name,email:email,phone:phone,diachi:diachi,trinhdo:trinhdo,content:content},function(data){
				if(data!='0') setTimeout(function(){ $("#form_nop_hs").html('<p style="color:#E87900; line-height:22px; font-weight:bold; padding:30px 0 60px;">Nộp hồ sơ tuyển dụng thành công. Chúng tôi sẽ liên hệ cho bạn nếu hồ sơ của bạn đáp ứng được nhu cầu tuyển dụng của chúng tôi.</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Lỗi. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
	
});