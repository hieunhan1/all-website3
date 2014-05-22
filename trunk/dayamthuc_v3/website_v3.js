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
		$("#home_info_new, .ds_chinhanh_item, .select_chinhanh, .box_right").corner("5px");
		$(".home_info, #content_popup").corner("15px");
		
		$(".img_item_bo").corner("78px");
		$(".more_item_3").corner("8px");
		
	}else{
		$(".img_item_bg").css("background","none");
		$(".img_item_bo").css({"border":"solid 3px #FFF"});
		$(".home_item_3").css({"border":"solid 1px #CCC","margin":"0 8px 8px"});
		$(".img_photo_item_3").css({"border":"solid 1px #CCC"});
	}
	
	/*support*/
	$.post("ajax.php",{support_online:"support_online",lang:$("#support_online").attr("lang")},function(data){
		if(data!="0"){
			$("#ajax_support_data").html(data);
			$("#loading_support").hide();
		} else {
			$("#support_online").hide();
		}
	})
	
	/* ho tro hoc vien */
	$(".hotro_hocvien").mouseover(function(){
		$(this).css("background-position","0px 160px");
	})
	$(".hotro_hocvien").mouseout(function(){
		$(this).css("background-position","0px 0px");
	})
	
	/*chi nhanh*/
	$("#btn_support").click(function(){
		$("#ajax_support").toggle(100);
		
	});
	$(".ds_chinhanh_item").live("click", function(){
		var id = ($(this).attr('class')).split(" ");
		$(".ds_chinhanh_item").css({"background-color":"#FF9","color":"#333","font-weight":"100"});
		$(this).css({"background-color":"#333","color":"#FFF","font-weight":"bold"});
		
		$(".ds_support").hide();
		$("." + id[1]).show();
	});
	
	$(".chinhanh").hide();
	$("#chinhanh1").show();
	$(".select_chinhanh").click(function(){
		var id = ($(this).attr('class')).split(" ");
		
		$(".select_chinhanh").css({"background-color":"#FF9","color":"#333"});
		$(this).css({"background-color":"#333","color":"#FFF"});
		
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
			$.post("ajax.php",{contact:"contact",name:name,email:email,phone:phone,diachi:diachi,message:message},function(data){
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:#00F; font-weight:bold; padding:30px 0 60px;">Liên hệ thành công. Chúng tôi sẽ trả lời cho bạn sớm nhất.<br /><br />Thanks,<br />NETSPACE.</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px;">Lỗi. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
	/* google_map */
	$(".google_map").click(function(){
		var id_map = $(this).attr("name");
		var height = $("#popupContact").height();
		var lang = $(this).attr("lang");
		
		$("#popupContact").height(height);
		centerPopup("fix");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("absolute"); });
		
		$.post("ajax.php",{google_map:id_map,lang:lang},function(data){
			$("#ajax_google_map").html(data);
		})
		
		$("#backgroundPopup, #popupContactClose, input[name=btn_huy_nop_hs]").click(function(){
			disablePopup();
		});
	});
	
	/*dang ky hoc*/
	$("input[name=btnSendDK]").click(function(){
		var HoTen = $("input[name=HoTen]").val();
		var NgaySinh = $("input[name=nam]").val() + '-' + $("input[name=thang]").val() + '-' + $("input[name=ngay]").val();
		var Email = $("input[name=Email]").val();
		var DiaChi = $("input[name=DiaChi]").val();
		var DienThoai = $("input[name=DienThoai]").val();
		var TotNghiep = $("select[name=TotNghiep]").val();
		var KhoaHoc = $("select[name=KhoaHoc]").val();
		var NoiHoc = $("select[name=NoiHoc]").val();
		var ThanhVienHoi = $("textarea[name=ThanhVienHoi]").val();
		var thongtin_khac = $("select[name=thongtin_khac]").val();
		if(HoTen.length<3){
			alert("Nhập họ tên");
			$("input[name=HoTen]").focus();
			return false;
		}else if(NgaySinh.length<6){
			alert("Nhập ngày sinh");
			$("input[name=ngay]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(Email))){
			alert("Email chưa đúng");
			$("input[name=Email]").focus();
			return false;
		}else if(DiaChi.length<6){
			alert("Nhập địa chỉ");
			$("input[name=DiaChi]").focus();
			return false;
		}else if(DienThoai.length<6){
			alert("Nhập điện thoại");
			$("input[name=DienThoai]").focus();
			return false;
		}else{
			$("#form").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
			$.post("ajax.php",{dangky:"dangky",HoTen:HoTen,NgaySinh:NgaySinh,Email:Email,DiaChi:DiaChi,DienThoai:DienThoai,TotNghiep:TotNghiep,KhoaHoc:KhoaHoc,NoiHoc:NoiHoc,thongtin_khac:thongtin_khac,ThanhVienHoi:ThanhVienHoi},function(data){
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="line-height:25px; color:#00F; font-size:16px; font-weight:bold; padding-top:30px;">Đăng ký thành công. Chúng tôi sẽ liên hệ và thông báo lịch học cho bạn sớm nhất.<br /><br />Thanks,<br />NETSPACE</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 10px 60px 10px;">Có sự cố. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
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
		}else if(content.length < 150){
			$("#kinhnghiem").html('Kinh nghiệm, giới thiệu bản thân phải hơn 150 ký tự');
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