<?php
echo '<div id="content">
	<div id="navigator">
		<a href="http://'.$domain.'">Trang chủ</a>
		'.$tc->navigator($idMenu).'
	</div>
	<div class="viewpost">
		<h1>'.$row_detail['name'].'</h1>
		<h2>'.$row_detail['metaDescription'].'</h2>
		<div style="width:600px; margin:auto"><iframe width="600" height="400" src="'.$row_detail['link'].'?origin=www.vikybomi.com.vn&amp;rel=0" frameborder="0"></iframe></div>
		'.$row_detail['content'].'
	</div>
</div>';