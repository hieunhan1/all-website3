<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>

<style>
.neoslideshow {position:relative; width:500px; height:260px;}
.neoslideshow img {position:absolute;left:0; top:0;}
</style>

<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript">
$(function() {
	$('.neoslideshow img:gt(0)').hide();
	setInterval(function(){
      $('.neoslideshow :first-child').fadeOut()
         .next('img').fadeIn()
         .end().appendTo('.neoslideshow');}, 
      4000);
})
</script>


</head>

<body>

<div class="neoslideshow">
  <img src="http://ntuts.com/demo/demopic/simpleslideshow/1.jpg" width="500" height="260" />
  <img src="http://ntuts.com/demo/demopic/simpleslideshow/2.jpg" width="500" height="260" />
  <img src="http://ntuts.com/demo/demopic/simpleslideshow/3.jpg" width="500" height="260" />
  <img src="http://ntuts.com/demo/demopic/simpleslideshow/4.jpg" width="500" height="260" />
  <img src="http://ntuts.com/demo/demopic/simpleslideshow/5.jpg" width="500" height="260" />
</div>


</body>
</html>