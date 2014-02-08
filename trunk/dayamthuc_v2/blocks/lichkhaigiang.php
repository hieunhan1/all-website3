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
    
    <table cellpadding="6" cellspacing="0" border="1"  style="width:100%; border-collapse:collapse; line-height:35px">
        <tbody>
            <tr bgcolor="#990000">
                <td style="text-align:center; padding:5px 0"><span style="color:#FF0; font-weight:bold; font-size:140%">TÊN KHÓA HỌC</span></td>
                <td style="text-align:center; padding:5px 0"><span style="color:#FF0; font-weight:bold; font-size:140%">KHAI GIẢNG</span></td>
            </tr>
            <?php
			
			
            $qr = $tc->menu($idMenu,6);
            while($row = mysql_fetch_array($qr)){
                echo '<tr bgcolor="#ffff99"><th colspan="2" style="color:#f00">'.$row['name'].'</th></tr>';
                $qr2 = $tc->menu($row['id'],6);
                if(mysql_num_rows($qr2) > 1){
                    while($row2 = mysql_fetch_array($qr2)){
                        echo '<tr><td colspan="2" style="text-align:center; font-size:14px; color:#0000FF; font-weight:bold">'.$row2['name'].'</td></tr>';
                        
                        $qr_kg = mysql_query("SELECT name,link,khaigiang FROM lichkhaigiang WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,".$row2['id'].",%' ORDER BY `order`");
                        $i = 0;
                        while($row_kg = mysql_fetch_array($qr_kg)){
                            $i++;
                            echo '<tr><td style="padding-left:5px"><span style="font-weight:bold">'.$i.'. <a href="'.$row_kg['link'].'">'.$row_kg['name'].'</a></span></td>
                            <td style="text-align:center">'.$row_kg['khaigiang'].'</td></tr>';
                        }
                    }
                }else{
                    $qr_kg = mysql_query("SELECT name,link,khaigiang FROM lichkhaigiang WHERE `delete`=0 AND status=1 AND menu_id LIKE '%,".$row['id'].",%' ORDER BY `order`");
                    $i = 0;
                    while($row_kg = mysql_fetch_array($qr_kg)){
                        $i++;
                        echo '<tr><td style="padding-left:5px"><span style="font-weight:bold">'.$i.'. <a href="'.$row_kg['link'].'">'.$row_kg['name'].'</a></span></td>
                        <td style="text-align:center">'.$row_kg['khaigiang'].'</td></tr>';
                    }
                }
                
            }
            ?>
        </tbody>
    </table>
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:10px"></div>
    <div><a href="javascript:;" id="run_top" title="Lên đầu trang"><img src="images/top.jpg" alt="top" /></a></div>
    <div style="clear:both; height:20px"></div>
</div>