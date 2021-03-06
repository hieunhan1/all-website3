$(document).ready(function(){

//var screen_w = screen.width;
//var screen_h = screen.height;
//var window_h = $(window).height();
//chieu dai auto
var window_w = $(window).width();
if(window_w >= 1024){
	$('body').css('width', window_w);
	$('#container').css('width', window_w);
	$('#right').css('width', window_w - 230);
}

//chieu cao auto
var height_l = $('#left').height();
var height_r = $('#right').height();
if(height_l > height_r) $('#right').css('height', height_l);
else $('#left').css('height', height_r);

//an hien update or no update
$('#create').hide();
$('.col_update').hide();
$('#update').click(function(){
	$('#update').hide();
	$('.col_create').hide();
	$('#create').show();
	$('.col_update').show();
});
$('#create').click(function(){
	$('#create').hide();
	$('.col_update').hide();
	$('#update').show();
	$('.col_create').show();
});

//tinh column full
var width_content = $('#content').width();
$('.col_full').width(width_content - 230 - $('.col_fix').width() - $('.col_action').width() - $('.col_order').width());

/*
* chon nhieu menu
* Danh sách các checkbox: list_check .class
* Giá trị được dặt vào: list_view    #id
*/
function chon_nhieu_menu(list_check, list_view){
	$('.'+list_check).change(function(){
		var str=",";
		$('.'+list_check+':checked').each(function(i,val){
			str += $(this).val() + ',';
		});
		$('#'+list_view).attr('value',str);
	});
};
chon_nhieu_menu('checkbox', 'menu_id');
chon_nhieu_menu('checkbox', 'position_id');
chon_nhieu_menu('checkbox_xem', 'quyen_xem');
chon_nhieu_menu('checkbox_action', 'quyen_action');
/*
* SELECT
*/
$('.row').click(function(){
	$('.row').css('background', 'none');
	$(this).css('background', '#FFFF99');
	$('.row:first').css('background', '#88C4FF');
});
/*
* DETELE
*/
$('.delete_one').click(function(){
	var id = $(this).attr('id');
	var page = $(this).attr('page');
	var name = $(this).attr('name');
	if(confirm('Bạn có muốn xóa "'+name+'" ?')) {
		$.post('ajax.php',{delete:258, page:page, id:id}, function(){window.location.reload();});
	}
});
/*
* STATUS
*/
$('.status').click(function(){
	var id = $(this).attr('id');
	var page = $(this).attr('page');
	var name = $(this).attr('name');
	var set = $(this).attr('set');
	if(set == 1) set = 0; else set = 1;
	if(confirm('Bạn có đổi trạng thái "'+name+'" ?')) {
		$.post('ajax.php',{status:258, page:page, set:set, id:id}, function(){window.location.reload();});
	}
});
//bien doi alias
function change_alias(alias)
{
    var str = alias;
    str= str.toLowerCase();
    str= str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a");
    str= str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e");
    str= str.replace(/ì|í|ị|ỉ|ĩ/g,"i");
    str= str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o");
    str= str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u");
    str= str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y");
    str= str.replace(/đ/g,"d");
    str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g,"-");
	str= str.replace(/\\|\$|\||\{|\}|\`/g,"-");
    /* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
    str= str.replace(/-+-/g,"-"); //thay thế 2- thành 1- 
    str= str.replace(/^\-+|\-+$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
    return str;
}
////////rewrite///////////
$('#name_rewrite').click(function(){
	var name = $('#name').val();
	$(this).val(change_alias(name));
});

////////////disable and enable  input//////////////
function input_disable(input_id){
	$('#'+input_id).attr("disabled", true); 
}
function input_enable(input_id){
	$('#'+input_id).attr("disabled", false); 
}

/////////////CHECK DATA////////////////
function check_data(check_id, action_id){
	var check0 = $('#'+check_id[0]).val();
	var check1 = $('#'+check_id[1]).val();
	var check2 = $('#'+check_id[2]).val(); 
	if(check1==null){check1=3;}
	if(check0.length < 3) input_disable(action_id);
	else if(check1.length < 3) input_disable(action_id);
	else input_enable(action_id);

	$('#'+check_id[0]+',#'+check_id[1]+',#'+check_id[2]).blur(function(){
		check_data(check_id, action_id)
	});
}
check_data(['name','name_rewrite'],'btnSubmit');

/*
* url
*/
$("#url").click(function(){
	var url = $("#name_rewrite").val()+'/';
	$("#url").val(url);
});
//tags keyword
$('#metaKeyword').dblclick(function(){
	var name = $('#name').val();
	$(this).val(name);
});

function info_id(id){
	$.post('ajax.php',{info_id:id},function(data){
		$('#name_info').html(data);
	});
}
var id = $('#info_id').val();
info_id(id);
$('#info_id').blur(function(){
	var id = $('#info_id').val();
	info_id(id);
});



/*
* popup
*/
var popupStatus = 0; //0 thì popup sẽ đc load, 1 thì popup ko đc load
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
function centerPopup() { 
    var windowWidth = document.documentElement.clientWidth; 
    var windowHeight = document.documentElement.clientHeight; 
    var popupHeight = $("#popupContact").height(); 
    var popupWidth = $("#popupContact").width(); 
    $("#popupContact").css({ 
        "position": "fix", 
        "bottom": windowHeight/2-popupHeight/2, 
        "left": windowWidth/2-popupWidth/2 
    }); 
    $("#backgroundPopup").css({"height": windowHeight}); 
}
//User click vào [Đóng lại] để đóng popup
$("#popupContactClose").live('click',function() {
	disablePopup();
}); 
//User click vào vùng xám background để đóng popup 
$("#backgroundPopup").live('click',function() {
	disablePopup();
});
//User nhấn Esc để đóng popup
$(document).keypress(function(e) {
	if(e.keyCode==27) disablePopup(); //|| popupStatus==1
});
/*
* hien popup
*/
$('.item_hoidap').click(function(){
	var id = ($(this).attr('class')).split(" ");
	$.post('ajax.php',{item_hoidap:258, id:id[1]}, function(data){
		$('#popup').html(data);
		centerPopup();
		loadPopup();
	});
});
$('input[name=btnTraLoi]').live('click', function(){
	var name = $('input[name=namea]').val();
	var email = $('input[name=emaila]').val();
	var content = $('textarea[name=contenta]').val();
	var id = $('input[name=id]').val();
	
	$.post('ajax.php',{capnhattraloi:258,name:name,email:email,content:content,id:id},function(){
		alert('Gửi thành công');
		window.location.reload();
	});
});
$('.item_status').click(function(){
	var id = ($(this).attr('class')).split(" ");
	if(confirm('Bạn có muốn đổi trang thái?')) {
		$.post('ajax.php',{item_status:258, id:id[1], status:id[2]}, function(){ window.location.reload(); });
	}
});
$('input[name=btnCancel]').live('click',function(){
	disablePopup();
});

$("input[name=them_detail]").click(function(){
	var id = $("input[name=id_tracing_express]").val();
	var date_update = $("#ngay_detail").val();
	var name = $("input[name=buucuc]").val();
	var notes = $("input[name=notes]").val();
	$.post("ajax.php",{tracing_express_detail:"tracing_express_detail",id:id,name:name,notes:notes,date_update:date_update},function(data){
		if(data != '0'){
			$("#ajax_detail").append(data);
			$("#ngay_detail").val('');
			$("input[name=buucuc]").val('');
			$("input[name=notes]").val('');
			return true;
		}else{
			alert('Lỗi, vui lòng kiểm tra lại.');
			return false;
		}
	});
});
$(".delete_tracing_express_detail").live("click", function(){
	var id = ($(this).attr('class')).split("delete_tracing_express_detail ");
	if(confirm('Bạn có muốn xóa?')) {
		$.post('ajax.php',{delete_tracing_express_detail:'delete_tracing_express_detail', id:id[1]}, function(data){
			if(data!='0') $("#tracing_express_detail_" + id[1]).hide();
			else{
				alert('Lỗi, vui lòng kiểm tra lại.');
				return false;
			}
		});
	}
});


});