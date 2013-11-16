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

function sroll_top(){
	$("html, body").animate({ scrollTop: 0 }, 500);
	return false;
}

function callback(){
	$("#loading").text("<br /><br />Tải dữ liệu thành công.<br /><br />");
}

$(document).ready(function($){
	$('#run_top').click(function(){
		sroll_top();
	});
	
	//$("#data").load("danhmuc.php");
	
	/*tai khoan*/
	/*$("input[name=btn_login]").live("click",function(){
		var username = $("input[name=username]").val();
		var password = $("input[name=password]").val();
		$.post("ajax.php",{login:"login",username:username,password:password},function(data){
			if(data=="1") window.location.reload();
			else $("#error").html(data);
		})
	});
	$("#logout").click(function(){
		$.post("ajax.php",{logout_forum:"logout_forum"},function(){
			window.location.reload();
		})
	});
	$("input[name=btnDoiMatKhau]").click(function(){
		var name = $("input[name=hoten]").val();
		var pass_cu = $("input[name=pass_cu]").val();
		var pass_moi1 = $("input[name=pass_moi1]").val();
		var pass_moi2 = $("input[name=pass_moi2]").val();
		if(pass_moi1!=pass_moi2 && pass_moi1.length<6){
			alert('Mật khẩu mới chưa đúng');
			return false;
		}
	});*/
	
	/*danh muc*/
	/*$(".pagenumber").live("click",function(){
		var id = ($(this).attr('class')).split("phantrang_");
		$(".phantrang_" + id[2]).css({"font-weight":"100", "background-color":"#666666"});
		$(this).css({"font-weight":"bold", "background-color":"#ED1E28"});
		$.post("ajax.php",{phantrang:"phantrang",page:id[1],idMenu:id[2]},function(data){
			$("#dmid_"+id[2]).html(data);
		});
	});
	$("#danhmuc").live("click",function(){
		$("#data").load("danhmuc.php");
	});
	$(".create").live("click",function(){
		$(".popup_dis").hide();
		$("#form_insert_info").show();
		sroll_top();
		var id = ($(this).attr('class')).split(" create_");
		var name = $(this).attr('name'); $("#name_title").html('<p style="padding-bottom:20px; font-size:20px; color:blue">Đăng bài mục: ' + name + '</p>');
		var height = $("#popupContact").height();
		$("#popupContact").height(height);
		centerPopup("absolute");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("absolute"); });
		$("input[name=btnSubmit_info]").live("click",function(){
			var name = $("input[name=name]").val();
			var content = CKEDITOR.instances["content"].getData();
			$("#form_insert_info").hide();
			$("#info_message").html("Đang xử lý..");
			$.post("ajax.php",{forum_info:"forum_info",name:name,content:content,menu_id:id[1]},function(data){
				if(data!="0"){
					$("#info_message").html("<strong>Đăng thành công.</strong>");
					setTimeout(function(){
						window.location.reload();
					},1000);
					return true;
				}else{
					$("#info_message").html("<font color='#F00'>Nội dung phải hơn 30 ký tự.</font>");
					$("#form_insert_info").show();
					return false;
				}
			});
		});
	});
	$(".id_info").live("click",function(){
		var id = ($(this).attr('class')).split(" id_info_");
		var danhmuc = ($(this).attr('name')).split(" -|- ");
		$.post("detail.php",{id:id[1],danhmuc:danhmuc[0],idMenu:danhmuc[1]},function(data){
			$("#data").html(data);
		});
	});
	$(".traloi").live("click",function(){
		$(".popup_dis").hide();
		$("#form_insert_info_cm").show();
		sroll_top();
		var name = $("#name_info").html(); $("#name_title_cm").html('<p style="padding-bottom:20px; font-size:20px; color:blue">Trả lời: ' + name + '</p>');
		
		var id = ($(this).attr('class')).split(" traloi_");
		
		centerPopup("fix");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("fix"); });
		
		$("input[name=btnSubmit_info_cm]").live("click",function(){
			var content = CKEDITOR.instances["content_cm"].getData();
			$("#form_insert_info_cm").hide();
			$("#info_message").html("Đang xử lý..");
			$.post("ajax.php",{forum_info_cm:"forum_info_cm",content:content,id:id[1]},function(data){
				if(data!="0"){
					$("#ajax_cm").prepend(data);
					$("#info_message").html("<strong>Đăng thành công.</strong>");
					CKEDITOR.instances["content_cm"].setData("");
					setTimeout(function(){
						disablePopup();
						$("#info_message").html("");
					},1000);
					return true;
				}else{
					$("#info_message").html("<font color='#F00'>Nội dung phải hơn 30 ký tự.</font>");
					$("#form_insert_info_cm").show();
					return false;
				}
			});
		});
	});*/

	
	

});