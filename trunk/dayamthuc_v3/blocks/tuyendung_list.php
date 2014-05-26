<div class="wrapper"><div class="home_item_3">
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
			$qr = mysql_query("SELECT name,name_rewrite,noilamviec,mucluong,hannop FROM web_tuyendung WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%' ORDER BY date_create DESC {$limit}");
			
			$noilamviec = array('','Tp.HCM','Hà Nội','Huế','Đà Nẵng','Cần Thơ','Đồng Nai','Khác');
			
			$i = $from;
			if($qr){
				while($row = mysql_fetch_array($qr)){
					$i++;
					echo '<tr><th align="right" valign="top">'.$i.'.</th>
					<td valign="top"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html">'.$row['name'].'</a></td>
					<td align="center" valign="top">'.$noilamviec[$row['noilamviec']].'</td>
					<td align="center" valign="top">'.$row['mucluong'].'</td>
					<td align="center" valign="top">'.date('d/m/Y',strtotime($row['hannop'])).'</td></tr>';
				}
			}
			?>
        </table><br />
        <?php
        $phantrang = $tc->phantrang($danhmuc,$page,max_limit_2,'id','web_tuyendung',"`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'");
		echo "<div id=\"phantrang\">{$phantrang}</div>";
		?>
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:10px"></div>
</div></div>