<div id="content">
    <div class="row" style="background-color:#88C4FF; font-weight:bold">
    <?php
        for($i=0; $i<= count($column_full); $i++) {
			if($i != 6) echo $column_full[$i];
		}
	?></div>
    
    <?php
	$order .= ' ORDER BY date_create DESC ';
	if(!@$_GET['page_number']) $page_number = 1; else $page_number = $_GET['page_number'];
	$from = (($page_number * $max_results) - $max_results);
	$type = 8; //loại sql select $type = 6;
	$table = $page;
	$field = array('id','name', 'status','user_create','date_create','user_update','date_update','noihoc');
	$limit = array($from, $max_results);
	$sql->get_sql($type,$table,$field,$order,$limit);
	$qr = $sql->executable() or die ($error_sql);
	if($idUser==25){
		while($row = mysql_fetch_array($qr)){
			echo list_column($page, $row[$field[0]], $row[$field[1]], $row[$field[2]], $row[$field[3]], $row[$field[4]], $row[$field[5]], $row[$field[6]], $row[$field[7]]);
		}
		mysql_free_result($qr);
	}else{
		while($row = mysql_fetch_array($qr)){
			echo list_column2($page, $row[$field[0]], $row[$field[1]], $row[$field[2]], $row[$field[3]], $row[$field[4]], $row[$field[5]], $row[$field[6]], $row[$field[7]]);
		}
		mysql_free_result($qr);
	}
	/*
	* Phân trang
	*/
	echo '<div id="phantrang">';
	phantrang($page,$max_results,$page_number,$order);
	echo '</div>';
	?>
    
</div>