// JavaScript Document
$(document).ready(function(){
	$(".MoTa").live("blur", function(){
		var mota = $(this).val();
		$.get("tenkhongdau.php",{chuoi:mota},function(data){
			$(".TenKhongDau").val(data);
		});
	});

	$(".menu").click(function(){
		var id = $(this).attr("idMenu");
		if(id == 1) {
			$("#quantri").load("1trangchu.php");
		} else if(id == 2) {
			$("#quantri").load("2cautruc.php");
		} else if(id == 3) {
			$("#quantri").load("3menu.php");
		} else if(id == 4) {
			$("#quantri").load("4baiviet.php");
		} else {
			$("#quantri").load("5slide.php");
		}
	});
	$(".active").live("mouseover", function(){
		$(this).addClass("activeabc");
	});
	$(".active").live("mouseout", function(){
		$(this).removeClass("activeabc");
	});

////////Cau truc/////////////
	$("input[name=btnSuaCT]").live("click", function(){
		$("#quantri").load("2cautruc_sua.php");
		$("input[name=btnCapNhatCT]").live("click", function(){
			var Title = $("input[name=Title]").val();
			var metaKeyword = $("textarea[name=metaKeyword]").val();
			var metaDescription = $("textarea[name=metaDescription]").val();
			var css = $("input[name=css]").val();
			$.get("2cautruc_sua.php", {CapNhatPage:1, Title:Title, metaKeyword:metaKeyword, metaDescription:metaDescription, css:css}, function(data){
				$("#quantri").load("2cautruc.php");
			});
		});
	});

////////Danh muc menu/////////////
	$("input[name=btnThemMenu]").live("click", function(){
		$("#quantri").load("3menu_them.php");
		$("input[name=btnThemMoiMenu]").live("click", function(){
			var Motamenu = $("input[name=Motamenu]").val();
			var Ten_KhongDau = $("input[name=Ten_KhongDau]").val();
			var URL = $("input[name=URL]").val();
			var ThuTu = $("input[name=ThuTu]").val();
			var AnHien = $("input[name=AnHien]:checked").val();
			if(Motamenu != "" & Ten_KhongDau != "") {
				$.get("3menu_them.php", {ThemMenu:1, Motamenu:Motamenu, Ten_KhongDau:Ten_KhongDau, URL:URL, ThuTu:ThuTu, AnHien:AnHien}, function(data){
					$("#quantri").load("3menu.php");
				})
			} else {alert("Mô tả menu hoặc Tên không dấu không được để trống.")};
		});
	});
	$("input[name=btnXoaMenu]").live("click", function(){
		var idMenu = $(this).attr("idMenu");
		var Mota = $(this).attr("Mota");
		if(confirm("Bạn có muốn xóa " +Mota+"?")) {
			$.get("3menu.php", {XoaMenu:1, idMenu:idMenu}, function(){
				$("#quantri").load("3menu.php");
			});
		}
	});
	$("input[name=btnSuaMenu]").live("click", function(){
		var idMenu = $(this).attr("idMenu");
		$.get("3menu_them.php", {SuaMenu:1, idMenu:idMenu}, function(data){
			$("#quantri").html(data);
		});
		$("input[name=btnCapNhatMenu]").live("click", function(){
			var idMenu = $("input[name=idMenu]").val();
			var Motamenu = $("input[name=Motamenu]").val();
			var Ten_KhongDau = $("input[name=Ten_KhongDau]").val();
			var URL = $("input[name=URL]").val();
			var ThuTu = $("input[name=ThuTu]").val();
			var AnHien = $("input[name=AnHien]:checked").val();
			if(Motamenu != "" & Ten_KhongDau != "") {
				$.get("3menu_them.php", {CapNhatMenu:1, idMenu:idMenu, Motamenu:Motamenu, Ten_KhongDau:Ten_KhongDau, URL:URL, ThuTu:ThuTu, AnHien:AnHien}, function(data){
					$("#quantri").load("3menu.php");
				})
			} else {alert("Mô tả menu hoặc Tên không dấu không được để trống.")};
		});
	});
////////bai viet/////////////
//	$("input[name=btnXoaBV]").live("click", function(){
//		var idKH = $(this).attr("idKH");
//		var TenKH = $(this).attr("TenKH");
//		if(confirm("Bạn có muốn xóa " +TenKH+"?")) {
//			$.post("4baiviet.php", {XoaBaiViet:1, idKH:idKH}, function(){
//				$("#quantri").load("4baiviet.php");
//			});
//		}
//	});
//	
//	$("input[name=btnThemBV]").live("click", function(){
//		$("#quantri").load("4baiviet_them.php");
//		$("input[name=btnThemMoBV]").live("click", function(){
//			var Ngay = $("input[name=Ngay]").val();
//			var idMenu = $("select[name=idMenu]").val();
//			var TenKH = $("input[name=TenKH]").val();
//			var Ten_KhongDau = $("input[name=Ten_KhongDau]").val();
//			var urlHinh = $("input[name=urlHinh]").val();
//			var TomTat = $("textarea[name=TomTat]").val();
//			var ChiTiet = $("textarea[name=ChiTiet]").val();
//			var AnHien = $("input[name=AnHien]:checked").val();
//			if(idMenu!=-1 & TenKH!="" & Ten_KhongDau!="") {
//				$.post("4baiviet_them.php", {ThemBaiViet:1, Ngay:Ngay, idMenu:idMenu, TenKH:TenKH, Ten_KhongDau:Ten_KhongDau, urlHinh:urlHinh, TomTat:TomTat, ChiTiet:ChiTiet, AnHien:AnHien}, function(data){
//					$("#quantri").load("4baiviet.php");
//				})
//			} else {alert("Những chỗ có đánh dấu * không được bỏ trống.")};
//		});
//	});
//	$("input[name=btnHuyBV]").live("click", function(){
//			$("#quantri").load("4baiviet.php");											 
//	});
//	
//	$("input[name=btnSuaBV]").live("click", function(){
//		var idKH = $(this).attr("idKH");
//		$.post("4baiviet_them.php", {SuaBaiViet:1, idKH:idKH}, function(data){
//			$("#quantri").html(data);
//		});
//		$("input[name=btnCapNhatBV]").live("click", function(){
//			var idKH = $("input[name=idKH]").val();
//			var Ngay = $("input[name=Ngay]").val();
//			var idMenu = $("select[name=idMenu]").val();
//			var TenKH = $("input[name=TenKH]").val();
//			var Ten_KhongDau = $("input[name=Ten_KhongDau]").val();
//			var urlHinh = $("input[name=urlHinh]").val();
//			var TomTat = $("textarea[name=TomTat]").val();
//			var ChiTiet = $("textarea[name=ChiTiet]").val();
//			var AnHien = $("input[name=AnHien]:checked").val();
//			if(idMenu!=-1 & TenKH!="" & Ten_KhongDau!="") {
//				$.post("4baiviet_them.php", {CapNhatBaiViet:1, idKH:idKH, Ngay:Ngay, idMenu:idMenu, TenKH:TenKH, Ten_KhongDau:Ten_KhongDau, urlHinh:urlHinh, TomTat:TomTat, ChiTiet:ChiTiet,  AnHien:AnHien}, function(data){
//					$("#quantri").load("4baiviet.php");
//				})
//			} else {alert("Những chỗ có đánh dấu * không được bỏ trống.")};
//		});
//	});
	$("input[name=btnXoaBV]").click(function(){
		var idKH = $(this).attr("idKH");
		var TenKH = $(this).attr("TenKH");
		if(confirm("Bạn có muốn xóa " +TenKH+"?")) {
			$.get("delete.php", {XoaBaiViet:1, idKH:idKH}, function(){
				window.location.reload();
			});
		}
	});
	$("input[name=btnXoaS]").click(function(){
		var idQC = $(this).attr("idQC");
		var MoTa = $(this).attr("MoTa");
		if(confirm("Bạn có muốn xóa " +MoTa+"?")) {
			$.get("delete.php", {XoaSlide:1, idQC:idQC}, function(){
				window.location.reload();
			});
		}
	});
});
//alert();
//alert("a");