<link rel="stylesheet" href="library/example/css/website.css" type="text/css" media="screen"/>
<script type="text/javascript" src="library/example/js/jquery.tinyscrollbar.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#scrollbar1').tinyscrollbar();
	});
</script>
<div class="home_about">Giới thiệu</div>
<div id="scrollbar1">
	<div class="scrollbar"><div class="track"><div class="thumb"><div class="end"></div></div></div></div>
	<div class="viewport">
		 <div class="viewpost overview" style="text-align:justify">
			<?php
			$qr = $tc->home_chuongtrinh($idMenu);
			$row = mysql_fetch_array($qr);
			echo $row['content'];
			?>
		</div>
	</div>
</div>