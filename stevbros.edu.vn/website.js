$(document).ready(function($){

$("#nav li").hover(function(){
	$(this).find('ul:first').css({visibility: 'visible', display: 'none'}).show(200);
}, function(){
	$(this).find('ul:first').css({visibility: 'hidden'});
});

$("#top a:first").css("border","none");
$("#menu_top a:first").css('border','none');
$("#nav li a:first").css('background','none');

function addclass_menu(classname){
	var width = $("#" + classname).width();
	if(width >= 150) $("#" + classname).addClass("add_class_2");
	else $("#" + classname).addClass("add_class_1");
}
addclass_menu("nav_1");
addclass_menu("nav_2");
addclass_menu("nav_3");
addclass_menu("nav_4");
addclass_menu("nav_5");
$("#nav_6").addClass("add_class_2");

if(navigator.appName!="Microsoft Internet Explorer"){
	//$("#item2").corner("bottom 5px");
	//$(".input_foo").corner("3px");
	//$("#slider").corner("top");
	//$('#noibat .item2 img').corner("round tr");
}

/*nhan xet*/
var nhanxet_h = $("#list_nx").height();
if(nhanxet_h>=500) $("#list_nx").css({'height':'500px','overflow':'hidden'});
else $("#view_more_nx").hide();

var left_view = $("#left_view").height();
var right_view = $("#right_view").height();
if(left_view < right_view) $("#left_view").height(right_view);

$("#view_more_nx").click(function(){
	$("#list_nx").css({'height':'auto','overflow':'visible'});
	$("#view_more_nx").hide();
	var left_view = $("#left_view").height();
	var right_view = $("#right_view").height();
	if(left_view < right_view) $("#left_view").height(right_view);
});

$("input[name=name]").focus(function(){
	var data = $(this).val();
	if(data=='Họ tên') $(this).val('');
});
$("input[name=email]").focus(function(){
	var data = $(this).val();
	if(data=='Email') $(this).val('');
});
$("textarea[name=content]").focus(function(){
	var data = $(this).val();
	if(data=='Nhập nhận xét...') $(this).val('');
});

$("input[name=btnNhatxet]").click(function(){
	var name = $.trim($("input[name=name]").val());
	var email = $.trim($("input[name=email]").val());
	var content = $.trim($("textarea[name=content]").val());
	var alias = $.trim($("input[name=alias]").val());
	var link_baiviet = $.trim($("input[name=link_baiviet]").val());
	
	if(name=="" || name=="Họ tên"){ alert("Nhập họ tên"); $("input[name=name]").val(''); $("input[name=name]").focus(); return false; }
	else if(email=="" || email=="Email"){ alert("Nhập email"); $("input[name=email]").val(''); $("input[name=email]").focus(); return false; }
	else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){ alert("Email chưa đúng"); $("input[name=email]").focus(); return false; }
	else if(content=="Nhập nhận xét..."){ alert("Nhập nhận xét."); $("textarea[name=content]").val(''); $("textarea[name=content]").focus(); return false; }
	else if(content.length < 5){ alert("Nhận xét phải hơn 5 ký tự"); $("textarea[name=content]").focus(); return false; }
	else if(alias==""){ return false; }
	else{
		$("#list_nx").append('<p class="loading">loading...<br /><br /></p>');
		$.post("ajax.php",{post_nhanxet:"post_nhanxet",name:name,email:email,content:content,alias:alias,link_baiviet:link_baiviet},function(data){
			if(data!='0'){
				setTimeout(function(){
					$("#list_nx").prepend(data); 
					$("input[name=name]").val('Họ tên'); 
					$("input[name=email]").val('Email'); 
					$("textarea[name=content]").val('Nhập nhận xét...');
					$(".loading").hide(); }, 1000);
				return true;
			}else{
				$("#list_nx").append('Không gửi được. Vui lòng kiểm tra lại.<br /><br />');
				return false;
			}
		});
	}
});

$("input[name=submit_contact_foo]").click(function(){
	var name = $.trim($("input[name=name_contact_foo]").val());
	var phone = $.trim($("input[name=phone_contact_foo]").val());
	var email = $.trim($("input[name=email_contact_foo]").val());
	var content = $.trim($("textarea[name=content_contact_foo]").val());
	if(name==""){ alert("Nhập họ tên"); $("input[name=name_contact_foo]").val(''); $("input[name=name_contact_foo]").focus(); return false; }
	else if(phone.length < 9){ alert("Nhập số điện thoại"); $("input[name=phone_contact_foo]").focus(); return false; }
	else if(email==""){ alert("Nhập email"); $("input[name=email_contact_foo]").val(''); $("input[name=email_contact_foo]").focus(); return false; }
	else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){ alert("Email chưa đúng"); $("input[name=email_contact_foo]").focus(); return false; }
	else if(content.length < 5){ alert("Nội dung nhận xét phải hơn 5 ký tự"); $("textarea[name=content_contact_foo]").focus(); return false; }
	else{
		$("#contact_foo").html('<p style="color:#FFF; font-weight:bold; padding:20px;">Đang gửi...</p>');
		$.post("ajax.php",{contact:"contact",name:name,phone:phone,email:email,content:content},function(data){
			if(data!='0') setTimeout(function(){ $("#contact_foo").html('<p style="color:#FFF; font-weight:bold; padding:20px;">Gửi thành công</p>'); },500);
			else $("#contact_foo").html('<p style="color:#FFF; font-weight:bold; padding:20px;">Không gửi được. Vui lòng ấn F5 thử lại.</p>');
		});
	}
});

$("input[name=submit_contact]").click(function(){
	var name = $.trim($("input[name=name_contact]").val());
	var phone = $.trim($("input[name=phone_contact]").val());
	var email = $.trim($("input[name=email_contact]").val());
	var content = $.trim($("textarea[name=content_contact]").val());
	if(name==""){ alert("Nhập họ tên"); $("input[name=name_contact]").val(''); $("input[name=name_contact]").focus(); return false; }
	else if(phone.length < 9){ alert("Nhập số điện thoại"); $("input[name=phone_contact]").focus(); return false; }
	else if(email==""){ alert("Nhập email"); $("input[name=email_contact]").val(''); $("input[name=email_contact]").focus(); return false; }
	else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email))){ alert("Email chưa đúng"); $("input[name=email_contact]").focus(); return false; }
	else if(content.length < 5){ alert("Nội dung nhận xét phải hơn 5 ký tự"); $("textarea[name=content_contact]").focus(); return false; }
	else{
		$("#contact_form").html('<p style="font-weight:bold; padding:20px;">Đang gửi...</p>');
		$.post("ajax.php",{contact:"contact",name:name,phone:phone,email:email,content:content},function(data){
			if(data!='0') setTimeout(function(){ $("#contact_form").html('<p style="color:#5A8FA8; font-weight:bold; padding:20px;">Gửi thành công</p>'); },500);
			else $("#contact_form").html('<p style="color:#F00; font-weight:bold; padding:20px;">Không gửi được. Vui lòng ấn F5 thử lại.</p>');
		});
	}
});



});