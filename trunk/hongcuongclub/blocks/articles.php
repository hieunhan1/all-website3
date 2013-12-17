<?php
$qr = $tc->info_other($idMenu,$row_detail['id']);
if(mysql_num_rows($qr) > 0){
	while($row = mysql_fetch_array($qr)){
		$info_other .= '<p><span>&gt;&gt;</span><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html" title="'.$row['name'].'">'.$row['name'].'</a></p>';
	}
	$info_other = '<div id="baiviet_khac"><h4>Bài viết khác</h4>'.$info_other.'</div>';
}

echo '<div class="viewpost"><h1>'.$row_detail['name'].'</h1>'.$row_detail['content'].'</div>'.$info_other.'
<div style="clear:both; height:40px"></div>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/vi_VN/all.js#xfbml=1";
  fjs.parentNode.insertBefore(js, fjs);
}(document, "script", "facebook-jssdk"));</script>
<div class="fb-comments" data-href="http://'.$domain.'/'.$row_menu_one['url'].$row_detail['name_rewrite'].'.html" data-numposts="5" data-colorscheme="dark"></div>
';