<div style="clear:both; height:10px"></div>
<div id="navigator" style="margin-bottom:15px; padding-left:20px">
    <a href="?lang='.$lang.'"><img src="images/home.jpg" alt="trang chủ" /></a>
    <?php echo $tc->navigator($idMenu); ?>
</div>
	<?php
    echo '<div class="viewpost"><h1>'.$row_menu_one['title'].'</h1><h2>'.$row_menu_one['metaDescription'].'</h2><br /></div>';
    ?>
    <table width="100%" border="0" cellpadding="10" cellspacing="0" id="tuyendung">
        <tr style="background-color:#E5E5E5">
            <th width="50" align="right">STT</th>
            <th align="left">Vị trí tuyển dụng</th>
            <th width="150">Nơi làm việc</th>
            <th width="150">Mức lương</th>
            <th width="150">Hạn nộp HS</th>
        </tr>
        <?php
        $from = (($page - 1) * max_limit_2);
        $table = 'web_tuyendung';
        $where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
        $limit = "LIMIT {$from},".max_limit_2;
        
        $qr = mysql_query("SELECT name,name_rewrite,noilamviec,mucluong,date_update FROM {$table} WHERE {$where} ORDER BY date_create DESC {$limit}");
        
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
    $phantrang = $tc->phantrang($danhmuc,$page,max_limit_1,'id',$table,$where);
    echo "<div id=\"phantrang\">{$phantrang}</div>";
    ?>
	
<div style="clear:both; height:10px"></div>