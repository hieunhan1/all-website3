<div id="content">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php
		echo $tc->navigator($idMenu);
		?>
    </div>
    <hr />
    
    <div id="left" class="viewpost">
        <?php
		if($row_detail['other2']==1) $dangky = '<p style="text-align:center"><a href="http://'.$domain.'/Dang-Ky-Truc-Tuyen/'.$row_detail['id'].'/"><img alt="đăng ký trực tuyến" border="0px" src="http://www.dayamthuc.vn/upload/tin-tuc/dang-ky-truc-tuyen.gif" /></a></p>';
		
        echo '<h1>'.$row_detail['name'].'</h1>';
		?>
        <table width="100%" border="0" cellpadding="0" cellspacing="0" id="tuyendung_thongtin">
        	<tr>
            	<td colspan="2" style="background-color:#E5E5E5; font-weight:bold; padding:5px; text-align:center; color:#00F">THÔNG TIN TUYỂN DỤNG ĐẦU BẾP</td>
            </tr>
            <tr>
            	<td width="150" style="border-right:dotted 1px #CCC; font-weight:bold">Vị trí tuyển dụng:</td>
            	<td style="font-weight:bold; color:#F00"><?php echo $row_detail['name']; ?></td>
            </tr>
            <tr>
            	<td style="border-right:dotted 1px #CCC; font-weight:bold">Nơi làm việc:</td>
            	<td><?php $noilamviec = array('','Tp.HCM','Hà Nội','Huế','Đà Nẵng','Cần Thơ','Khác'); echo $noilamviec[$row_detail['noilamviec']]; ?></td>
            </tr>
            <tr>
            	<td style="border-right:dotted 1px #CCC; font-weight:bold">Mức lương:</td>
            	<td><?php echo $row_detail['mucluong']; ?></td>
            </tr>
            <tr>
            	<td style="border-right:dotted 1px #CCC; font-weight:bold">Số lượng tuyển dụng:</td>
            	<td><?php echo $row_detail['soluongtuyen']; ?></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dotted 1px #CCC; font-weight:bold">Quyền lợi:</td>
            	<td><?php echo $row_detail['quyenloi']; ?></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dotted 1px #CCC; font-weight:bold">Yêu cầu:</td>
            	<td><?php echo $row_detail['yeucau']; ?></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dotted 1px #CCC; font-weight:bold">Mô tả công việc:</td>
            	<td><?php echo $row_detail['content']; ?></td>
            </tr>
            <tr>
            	<td colspan="2" style="background-color:#E5E5E5; font-weight:bold; padding:5px; text-align:center; color:#00F">THÔNG TIN NHÀ TUYỂN DỤNG</td>
            </tr>
            <?php
            $qr = $tc->tuyendung_cty($row_detail['tuyendung_cty_id']);
			$row = mysql_fetch_array($qr);
			?>
            <tr>
            	<td valign="top" style="border-right:dotted 1px #CCC; font-weight:bold">Tên nhà tuyển dụng:</td>
            	<td><h2 style="color:#F00"><?php echo $row['name']; ?></h2></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dotted 1px #CCC; font-weight:bold">Sơ lược công ty:</td>
            	<td><?php echo $row['content']; ?></td>
            </tr>
            <tr>
            	<td valign="top" style="border-right:dotted 1px #CCC; font-weight:bold">Thông tin liên hệ:</td>
            	<td><?php
                echo "Địa chỉ: {$row['diachi']} <br />Email: {$row['email']} <br />Điện thoại: {$row['phone']} <br />";
				if($row['fax'] != '') echo "Fax: {$row['fax']}<br />";
				if($row['website'] != '') echo "Website: <a href='http://".trim($row['website'],'http://')."' target='_blank'>{$row['website']}</a><br />";
				?></td>
            </tr>
        </table>
        <div style="clear:both; height:30px"></div>
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:10px"></div>
    <div><a href="javascript:;" id="run_top" title="Lên đầu trang"><img src="images/top.jpg" alt="top" /></a></div>
    <div style="clear:both; height:20px"></div>
</div>