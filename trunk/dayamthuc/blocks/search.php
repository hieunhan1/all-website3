<div class='boxleft'>
    <div class='titleleft'></div>
    <div class='titlecenter'><a href='javascript:;'>Search</a></div>
    <div class='titleright'></div>
    <div class='titleicon'></div>
    <div style='clear:both'></div>
    <?php
	$txtSearch = $_POST['txtSearch'];
    $page = $_GET['page'];
	$from = (($page * $max_results) - $max_results);
	$danhmuc = $tc->Search($txtSearch, $from, $max_results);
	
	$all = $tc->Search_All($txtSearch);
	$total = mysql_result($all,0);
	mysql_free_result($all);
	
	if($total > 0) {
		echo "<p style='color:#999999; font-size:14px; margin-bottom:20px;'>About <b>{$total}</b> results with \"<b>{$txtSearch}</b>\"</p>";
		while($row_danhmuc = mysql_fetch_array($danhmuc)){
			echo "
			<div class='item'>
				<img src='upload/thumbnail/{$row_danhmuc[url_hinh]}' alt='{$row_danhmuc[name]}' />
				<h2><a href='{$linkpost}{$row_danhmuc[name_rewrite]}-{$row_danhmuc[idTin]}.htm'>{$row_danhmuc[name]}</a></h2>
				<p>{$row_danhmuc[summary]}</p>
			</div>
			";
		}
		mysql_free_result($danhmuc);
		
		echo "<div style='clear:both'></div>";
		
		$total_pages = ceil($total / $max_results);
		if($total_pages > 1) {
			echo "<p align='right'>";
			if($page > 1){
				$prev = ($page - 1);
				echo "<a href='search/$txtSearch-$prev.htm'>&lt;&lt; Previous | </a>&nbsp;";
			}
			
			for($i = $page-5; $i<=$page+5 & $i<=$total_pages; $i++){
				if(($page) == $i){
					echo "<font color='#FF0000'>$i&nbsp;</font>";
				} elseif($i>0) {
					echo "<a href='search/$txtSearch-$i.htm'> $i </a>&nbsp;";
				}
			}
			
			if($page < $total_pages){
				$next = ($page + 1);
				echo "<a href='search/$txtSearch-$next.htm'>| Next &gt;&gt;</a>";
			}
			echo "</p><br />";
		}
		//End Phan trang
	} else echo "<p style='color:#999999; font-size:14px; margin-bottom:20px;'>No results with \"<b>{$txtSearch}</b>\"</p>";
	?>
    <div style='clear:both'></div>
</div>