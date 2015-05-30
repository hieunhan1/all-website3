$(document).ready(function(){
	$('.urlHinh').hide();
	$('#status').click(function(){
		$('.txtComment').show();
		$('.urlHinh').hide();
	});
	$('#upphoto').click(function(){
		$('.urlHinh').show();
		$('.txtComment').hide();
	});
	
	///lay width
	var length = $('.boxtop').length;
	var width  = length * 315;
	$('.overview').width(width);
	
	////sroll
	var oScroll2 = $('#scrollbar2');
	if(oScroll2.length > 0){
		oScroll2.tinyscrollbar({ axis: 'x' });
	}
});