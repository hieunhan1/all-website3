<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" href="multizoom.css" type="text/css" />
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8/jquery.min.js"></script>
<script type="text/javascript" src="multizoom.js"></script>
<script type="text/javascript">
jQuery(document).ready(function($){
	$("#multizoom1").addimagezoom({
		descArea: "#description",
		speed: 1500,
		descpos: true,
		imagevertcenter: true,
		magvertcenter: true,
		zoomrange: [3, 10],
		magnifiersize: [250,250],
		magnifierpos: "right",
		cursorshadecolor: "#fdffd5",
		cursorshade: true
	});
})
</script>
</head>

<body>
<h3>Demo 3:</h3>
<div class="targetarea" style="border:1px solid #eee"><img id="multizoom1" alt="zoomable" title="" src="millasmall.jpg"/></div>
<div id="description">Milla Jojovitch</div>
<div class="multizoom1 thumbs">
<a href="millasmall.jpg" data-large="milla.jpg" data-title="Milla Jojovitch"><img src="milla_tmb.jpg" alt="Milla" title=""/></a> 
<a href="saleensmall.jpg" data-lens="false" data-magsize="300,300" data-large="saleen.jpg" data-title="Saleen S7 Twin Turbo"><img src="saleen_tmb.jpg" alt="Saleen" title=""/></a> 
<a href="haydensmall.jpg" data-large="hayden.jpg" data-title="Hayden Panettiere"><img src="hayden_tmb.jpg" alt="Hayden" title=""/></a> 
<a href="jaguarsmall.jpg" data-large="jaguar.jpg" data-title="Jaguar Type E"><img src="jaguar_tmb.jpg" alt="Jaguar" title=""/></a>
</div>
</body>
</html>
