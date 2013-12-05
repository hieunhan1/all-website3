<div class='boxleft'>
<div class='titleleft'></div><div class='titlecenter'><a href='<?php echo $row_menu_type['url'];?>'><?php echo $row_menu_type['name'];?></a></div><div class='titleright'></div><div class='titleicon'></div><div style='clear:both; height:1px'></div>
<?php
if($p!='xembaiviet'){
	//$page = $_GET['page'];
	$from = (($page * $max_results) - $max_results);
	$danhmuc = $tc->DMBaiViet($idMenu, $from, $max_results);
	$total_dm = mysql_num_rows($danhmuc);
	if($total_dm > 1) {
		while($row_danhmuc = mysql_fetch_array($danhmuc)){
			echo "<div class='item'><a href='{$linkpost}{$row_danhmuc[name_rewrite]}-{$row_danhmuc[id]}.html'><h2>{$row_danhmuc[name]}</h2><img src='".url_articles_thumb_image."{$row_danhmuc[url_hinh]}' alt='{$row_danhmuc[name]}' /></a><div>{$row_danhmuc[description]}</div></div>";
		}
		mysql_free_result($danhmuc);
		
		echo "<div style='clear:both'></div>";
		
		//Phan trang
		$all = $tc->DMBaiViet_All($idMenu);
		$total = mysql_result($all,0);
		mysql_free_result($all);
		$total_pages = ceil($total / $max_results);
		if($total_pages > 1) {
			echo "<div id='phantrang'>";
			if($page > 1){
				$prev = ($page - 1);
				echo "<a href='danh-muc/$row_xem[name_rewrite]-$idMenu-$prev.html'>Trang sau</a>";
			}
			for($i = $page-5; $i<=$page+5 & $i<=$total_pages; $i++){
				if(($page) == $i) echo "<span style='color:#C03; font-weight:bold; padding:3px 8px; border:solid 1px #999; background-color:#E5E5E5; margin-left:5px'>$i</span>";
				elseif($i>0) echo "<a href='danh-muc/$row_xem[name_rewrite]-$idMenu-$i.html'>$i</a>";
			}
			if($page < $total_pages){
				$next = ($page + 1);
				echo "<a href='danh-muc/$row_xem[name_rewrite]-$idMenu-$next.html'>Trang trước</a>";
			}
			echo "</div>";
		}
		//End Phan trang
	}elseif($total_dm==1) {
		$row_danhmuc = mysql_fetch_array($danhmuc);
		header("location: http://{$domain}/{$linkpost}{$row_danhmuc[name_rewrite]}-{$row_danhmuc[id]}.html");
	}
}else{
	$idMenu = $row_menu_type['id'];
	include_once('blocks/xembaiviet.php');
}
?>
<div style='clear:both'></div>
</div>