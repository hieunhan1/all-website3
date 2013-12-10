<!DOCTYPE html>
<html>
<head>
	<title>fancyBox - Fancy jQuery Lightbox Alternative | Demonstration</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

	<!-- Add jQuery library -->
	<script type="text/javascript" src="library/jquery.min.js"></script>
	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="library/extension/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="library/extension/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<script type="text/javascript">
		$(document).ready(function() {
			$('.fancybox').fancybox();
		});
	</script>
	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}

		body {
			max-width: 700px;
			margin: 0 auto;
		}
	</style>
</head>
<body>


	<h3>Simple image gallery</h3>
	<p>
		<a class="fancybox" href="library/extension/demo/1_b.jpg" data-fancybox-group="gallery" title="Lorem ipsum dolor sit amet"><img src="library/extension/demo/1_s.jpg" alt="" /></a>

		<a class="fancybox" href="library/extension/demo/2_b.jpg" data-fancybox-group="gallery" title="Etiam quis mi eu elit temp"><img src="library/extension/demo/2_s.jpg" alt="" /></a>

		<a class="fancybox" href="library/extension/demo/3_b.jpg" data-fancybox-group="gallery" title="Cras neque mi, semper leon"><img src="library/extension/demo/3_s.jpg" alt="" /></a>

		<a class="fancybox" href="library/extension/demo/4_b.jpg" data-fancybox-group="gallery" title="Sed vel sapien vel sem uno"><img src="library/extension/demo/4_s.jpg" alt="" /></a>
	</p>

	

	
	
</body>
</html>