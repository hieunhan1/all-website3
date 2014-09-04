$(document).ready(function(){
	/*see change*/
	$("#create").hide();
	$(".update").hide();
	$("#update").click(function(){
		$(this).hide();
		$("#create").show();
		$(".create").hide();
		$(".update").show();
	});
	$("#create").click(function(){
		$(this).hide();
		$("#update").show();
		$(".update").hide();
		$(".create").show();
	});
	
	/*select row status delete*/
	$(".row").click(function(){
		var id = ($(this).attr('class')).split("row row_");
		$(".row").css('background','none');
		$(".row_" + id[1]).css('background-color','#FFFF99');
	});
	$(".status").click(function(){
		var id 		= ($(this).attr('class')).split("status status_");
		var status 	= $(this).attr('status');
		var url 	= $(this).attr('url');
		var name 	= $(this).attr('name');
		
		if(status=='1'){
			if(confirm('Bạn có muốn ẩn "' + name + '"?')){
				$.post("ajax.php",{status:status,id:id[1],url:url},function(){
					$(".status_" + id[1]).attr('status','0');
					$(".status_" + id[1]).attr('src','images/anhien_0.gif');
				});
			}
		}else{
			if(confirm('Bạn có muốn hiện "' + name + '"?')){
				$.post("ajax.php",{status:status,id:id[1],url:url},function(){
					$(".status_" + id[1]).attr('status','1');
					$(".status_" + id[1]).attr('src','images/anhien_1.gif');
				});
			}
		}
	});
	$(".delete_one").click(function(){
		var id 		= ($(this).attr('class')).split("delete_one delete_one_");
		var url 	= $(this).attr('url');
		var name 	= $(this).attr('name');
		
		if(confirm('Bạn có muốn xóa "' + name + '"?')){
			$.post("ajax.php",{delete_one:"delete",id:id[1],url:url},function(){
				$(".row_" + id[1]).hide();
			});
		}
	});
	
	/*bien doi alias*/
	function change_alias(alias,dau_thaythe){
		var str = alias;
		str= str.toLowerCase();
		str= str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g,"a");
		str= str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g,"e");
		str= str.replace(/ì|í|ị|ỉ|ĩ/g,"i");
		str= str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g,"o");
		str= str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g,"u");
		str= str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g,"y");
		str= str.replace(/đ/g,"d");
		str= str.replace(/!|@|%|\^|\*|\(|\)|\+|\=|\<|\>|\?|\/|,|\.|\:|\;|\'| |\"|\&|\#|\[|\]|~|$|_/g, dau_thaythe);
		str= str.replace(/\\|\$|\||\{|\}|\`/g, dau_thaythe);
		/* tìm và thay thế các kí tự đặc biệt trong chuỗi sang kí tự - */
		str= str.replace(/-+-/g, dau_thaythe); //thay thế 2 - thành 1- 
		str= str.replace(/ + /g, dau_thaythe); //thay thế 2 - thành 1- 
		str= str.replace(/^\-+|\-+$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
		str= str.replace(/^\ +|\ +$/g,""); //cắt bỏ ký tự - ở đầu và cuối chuỗi
		return str;
	}
	$('#name_rewrite').dblclick(function(){
		var name = $.trim($('#name').val());
		$(this).val(change_alias(name,'-'));
	});
	$('#metaKeyword').dblclick(function(){
		var name = $.trim($('#name').val());
		$(this).val(name + ',' + change_alias(name,' '));
	});
	
	/*link danh muc menu*/
	$('.url').dblclick(function(){
		var name_rewrite = $.trim($('#name_rewrite').val());
		$(this).val(name_rewrite + '/');
	});
	
	/*checks box*/
	function checks_box_item(list_check, list_view){
		$('.'+list_check).change(function(){
			var str=",";
			$('.'+list_check+':checked').each(function(i,val){
				str += $(this).val() + ',';
			});
			$('#'+list_view).attr('value',str);
		});
	};
	checks_box_item('checkbox_item', 'position_id'); //class, id
	checks_box_item('checkbox_item', 'menu_id'); //class, id
	checks_box_item('checkbox_xem', 'quyen_xem'); //class, id
	checks_box_item('checkbox_action', 'quyen_action'); //class, id
	
	/*btn_action*/
	$(".btn_action").click(function(){
		setTimeout(function(){
			$(".btn_action").addClass("clock_button");
			$(".btn_action").attr("disabled", true);
		},500);
	});
	
	/* reset password */
	$("#reset_pass").click(function(){
		var id = $("input[name=reset_id]").val();
		var name = $("input[name=reset_user]").val();
		
		if(confirm("Bạn có muốn reset password cho tài khoản này?")){
			$.post("ajax.php",{ResetPass:"ResetPass",id:id,name:name},function(data){
				if(data=='1') alert('Mật khẩu được reset thành "123456789" thành công.');
				else alert('Tài khoản của bạn không có quyền reset password.');
			});
		}
	});
	
	/*other*/
	// cap nhat: dang ky, lien he, nop ho so
	$.post("ajax.php",{hocvien_dangky:"hocvien_dangky"},function(data){
		$("#hocvien_dangky").html(' (' + data + ')');
	});
	$.post("ajax.php",{hocvien_lienhe:"hocvien_lienhe"},function(data){
		$("#hocvien_lienhe").html(' (' + data + ')');
	});
	$.post("ajax.php",{hoso_tuyendung:"hoso_tuyendung"},function(data){
		$("#hoso_tuyendung").html(' (' + data + ')');
	});
	
	// gui thong tin
	$("input[name=btn_gui_thongtin]").click(function(){ 
		var id_nv = $("select[name=nhanvien_lienhe]").val();
		var id_dk = $("input[name=id]").val();
		
		$(this).attr("disabled",true);
		
		if(id_nv != '0'){
			$.post("ajax.php",{gui_thongtin:id_nv,id_dk:id_dk},function(data){
				if(data != '0'){
					$("#status_2").attr("checked", true);
					$("#ajax_gui_thongtin").html('Gửi thành công.<br />' + data);
				}else alert('Lỗi. Vui lòng thử lại');
			});
		}else{
			alert('Bạn chưa chọn nhân viên để gửi thông tin');
		}
	});
	
	// gui lien he
	$("input[name=btn_gui_lienhe]").click(function(){ 
		var id_nv = $("select[name=nhanvien_lienhe]").val();
		var id_dk = $("input[name=id]").val();
		
		$(this).attr("disabled",true);
		
		if(id_nv != '0'){
			$.post("ajax.php",{gui_lienhe:id_nv,id_dk:id_dk},function(data){
				if(data != '0'){
					$("#status_2").attr("checked", true);
					$("#ajax_gui_thongtin").html('Gửi thành công.<br />' + data);
				}else alert('Lỗi. Vui lòng thử lại');
			});
		}else{
			alert('Bạn chưa chọn nhân viên để gửi thông tin');
		}
	});
	
	//gui thong tin cho nha tuyen dung
	$("input[name=btn_email_nhatuyendung]").click(function(){ 
		var email = $("#email_nhatuyendung").html();
		var id = $("input[name=id]").val();
		
		$(this).attr("disabled",true);
		
		if(email != ''){
			$.post("ajax.php",{sendmail_nhatuyendung:email,id:id},function(data){
				if(data != '0'){
					$("#status_1").attr("checked", true);
					$("#ajax_gui_thongtin").html('Gửi thành công.');
				}else alert('Lỗi. Vui lòng thử lại');
			});
		}else return false;
	});
	
});