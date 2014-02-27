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
	
	
	// alert(); 
	// function(data){ $("body").prepend(data);
});