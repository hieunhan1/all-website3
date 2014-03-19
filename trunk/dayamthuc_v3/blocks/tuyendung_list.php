<div id="content">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    
    <div id="left">
        <?php
        echo '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2><br /></div>';
		?>
        <table width="100%" border="0" cellpadding="10" cellspacing="0" id="tuyendung">
        	<tr style="background-color:#E5E5E5">
            	<th width="30" align="right">STT</th>
                <th align="left">Vị trí tuyển dụng</th>
                <th width="90">Nơi làm việc</th>
                <th width="90">Mức lương</th>
                <th width="90">Hạn nộp HS</th>
            </tr>
            <?php
            $from = (($page - 1) * max_limit_2);
			$limit = "LIMIT {$from},".max_limit_2;
			$qr = mysql_query("SELECT name,name_rewrite,noilamviec,mucluong,date_update FROM web_tuyendung WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_create DESC {$limit}");
			
			$noilamviec = array('','Tp.HCM','Hà Nội','Huế','Đà Nẵng','Cần Thơ','Khác');
			
			$i = $from;
			while($row = mysql_fetch_array($qr)){
				$i++;
				echo '<tr><th align="right">'.$i.'.</th>
				<td><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html">'.$row['name'].'</a></td>
				<td align="center">'.$noilamviec[$row['noilamviec']].'</td>
				<td align="center">'.$row['mucluong'].'</td>
				<td align="center">'.date('d/m/Y',strtotime($row['date_update'])).'</td></tr>';
			}
			?>
        </table><br />
        <?php
        $phantrang = $tc->phantrang($danhmuc,$page,max_limit_2,'id','tuyendung',"`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'");
		echo "<div id=\"phantrang\">{$phantrang}</div>";
		?>
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:10px"></div>
    <div><a href="javascript:;" id="run_top" title="Lên đầu trang"><img src="images/top.jpg" alt="top" /></a></div>
    <div style="clear:both; height:20px"></div>
</div>