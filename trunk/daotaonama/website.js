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
	
	/*
	$('#run_top').click(function(){
		sroll_top();
	});
	*/
	
	if(browserVersion()!=7 && browserVersion()!=8){
		$(".txt_bo").corner("10px");
		$(".txt_register, .sel_register, .btn_register").corner("5px");
		
		$("#nav li a").mouseover(function(){
			$(this).corner("10px");
		});
	}
	
	/*Login*/
	$("#btn_login").click(function(){
		var username = $.trim($("input[name=username]").val());
		var password = $("input[name=password]").val();
		
		if(username.length < 6){
			alert("Username chưa đúng");
			$("input[name=username]").focus();
			return false;
		}else if(password.length < 6){
			alert("Password chưa đúng");
			$("input[name=password]").focus();
			return false;
		}else{
			$.post("ajax.php",{login:"login",username:username,password:password},function(data){
				if(data == '0'){
					alert("Lỗi. Vui lòng ấn F5 thử lại.");
					return false;
				}else if(data == '2'){
					alert("Username hoặc password chưa đúng.");
					return false;
				}else{
					window.location = data;
					return true;
				}
			});
		}
	});
	
	/*Register*/
	$("input[name=btnRegister]").click(function(){
		var name = $.trim($("input[name=hoten]").val());
		var phone = $.trim($("input[name=phone]").val());
		var email = $.trim($("input[name=email]").val());
		var nhucauhoc = $("select[name=nhucauhoc]").val();
		
		if(name.length < 2){ alert('Nhập họ tên'); $("input[name=hoten]").focus(); return false; }
		if(phone.length < 10){ alert('Nhập số điện thoại'); $("input[name=phone]").focus(); return false; }
		if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){ alert('Email chưa đúng'); $("input[name=email]").focus(); return false; }
		
		$("#form_register").hide();
		$("#ajax_register").show();
		
		$.post("ajax.php",{register:"register",name:name,phone:phone,email:email,nhucauhoc:nhucauhoc},function(data){
			if(data == '1'){
				setTimeout(function(){
					$("#ajax_register").html('<p style="font-weight:bold; font-size:120%; color:blue">Đăng ký thành công.</p>');
				},1000);
				return true;
			}else{
				setTimeout(function(){
					$("#ajax_register").html('<p style="font-weight:bold; color:#F00">Đăng ký không thành công. Vui lòng ấn F5 thử lại.</p>');
				},1000);
				return false;
			}
		});
	});
	
	$("#info_support").hide();
	$("#img_support").click(function(){
		$("#info_support").toggle(200);
		$("#info_support").css('background','url(images/loading1.gif) no-repeat center #FFF');
		$.post("ajax.php",{checks_support:"checks_support"},function(data){
			$("#info_support").css('background','#FFF');
			$("#info_support").html(data);
		});
		
	});
	
	/*user*/
	$(".ds_cotdiem").hide();
	$(".ds_cotdiem:first").show();
	$(".select_lophoc:first").css("color","#F00");
	
	$(".select_lophoc").click(function(){
		var id = ($(this).attr('class')).split("select_lophoc select_lophoc_");
		$(".select_lophoc").css("color","#03F");
		$(this).css("color","#F00");
		
		$(".ds_cotdiem").hide();
		$(".ds_cotdiem_" + id[1]).show();
	});
	
	$("input[name=btn_update_user]").click(function(){
		$("#thongtinhocvien").hide(100);
		$("#thongtinhocvien_update").show(200);
	});
	$("input[name=btn_update_pass]").click(function(){
		$("#thongtinhocvien").hide(100);
		$("#thongtinhocvien_pass").show(200);
	});
	$("input[name=btn_cancel]").click(function(){
		$("#thongtinhocvien_update").hide(100);
		$("#thongtinhocvien_pass").hide(100);
		$("#thongtinhocvien").show(200);
	});
	
	$("input[name=btn_change]").click(function(){
		var name = $.trim($("input[name=name]").val());
		var email = $.trim($("input[name=email]").val());
		var phone = $.trim($("input[name=phone]").val());
		var diachi = $.trim($("input[name=diachi]").val());
		if(name.length<2){
			alert("Nhập họ tên");
			$("input[name=name]").focus();
			return false;
		}else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){
			alert("Email chưa đúng");
			$("input[name=email]").focus();
			return false;
		}else if(phone.length<10){
			alert("Số điện thoại chưa đúng");
			$("input[name=phone]").focus();
			return false;
		}else if(diachi.length<6){
			alert("Địa chỉ phải hơn 6 ký tự");
			$("input[name=diachi]").focus();
			return false;
		}else{
			$.post("ajax.php",{update_user:"update_user",name:name,email:email,phone:phone,diachi:diachi},function(data){
				if(data=='1'){
					$("#thongtinhocvien_update").html('<p style="color:#03F">Cập nhật thông tin thành công. 5 giây sau sẽ tải lại trang</p>');
					setTimeout(function(){
						window.location.reload()
					},5000);
					return true;
				}else{
					$("#thongtinhocvien_update").html('<p style="color:#F00">Lỗi: Vui lòng ấn F5 thử lại.</p>');
					return false;
				}
			});
		}
	});
	
	$("input[name=btn_change_pass]").click(function(){
		var pass_cu = $("input[name=pass_cu]").val();
		var pass_moi = $("input[name=pass_moi]").val();
		var pass_moi_2 = $("input[name=pass_moi_2]").val();
		if(pass_cu.length < 6){
			alert("Mật khẩu cũ phải hơn 6 ký tự");
			$("input[name=pass_cu]").focus();
			return false;
		}else if(pass_moi.length < 6){
			alert("Mật khẩu mới phải hơn 6 ký tự");
			$("input[name=pass_moi]").focus();
			return false;
		}else if(pass_moi != pass_moi_2){
			alert("Mật khẩu nhắc lại chưa đúng");
			$("input[name=pass_moi_2]").focus();
			return false;
		}else{
			$.post("ajax.php",{password:pass_cu,pass_moi:pass_moi,pass_moi_2:pass_moi_2},function(data){
				if(data=='1'){
					$("#thongtinhocvien_pass").html('<p style="color:#03F">Thay đổi mật khẩu thành công. 5 giây sau sẽ tải lại trang</p>');
					setTimeout(function(){
						window.location.reload()
					},5000);
					return true;
				}else{
					alert("Mật khẩu chưa đúng.");
					return false;
				}
			});
		}
	});
});