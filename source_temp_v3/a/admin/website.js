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
	checks_box_item('checkbox', 'position_id'); //class, id
	checks_box_item('checkbox', 'menu_id'); //class, id
	
	/*btn_action*/
	$(".btn_action").click(function(){
		setTimeout(function(){
			$(".btn_action").addClass("clock_button");
			$(".btn_action").attr("disabled", true);
		},500);
	});
	
	/*other*/
	
	
	// alert(); 
	// function(data){ $("body").prepend(data);
});