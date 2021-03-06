<div id="content">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php
		echo $tc->navigator($idMenu);
		?>
    </div>
    <hr />
    
    <div id="left" class="viewpost">
        <?php echo '<h1>'.$row_detail['name'].'</h1>'; ?>
        <div class="btn_nop_hs" style="float:right">Nộp hồ sơ ngay</div>
        
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
        <div class="btn_nop_hs">Nộp hồ sơ ngay</div>
        <div style="clear:both; height:30px"></div>
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:10px"></div>
    <div><a href="javascript:;" id="run_top" title="Lên đầu trang"><img src="images/top.jpg" alt="top" /></a></div>
    <div style="clear:both; height:20px"></div>
</div>

<div id="popupContact">
    <div id="content_popup">
    	<div style="text-align:right; padding:5px 5px 0 0; background-color:#FFF"><a href="javascript:;" id="popupContactClose"><img src="images/close.png" alt="sản phẩm" /></a></div>
    	<div style="color:#00F; font-weight:bold; font-size:150%; padding-bottom:10px">Nộp hồ sơ: <?php echo $row_detail['name']; ?></div>
        <table width="100%" border="0" cellpadding="0" cellspacing="15" id="form_nop_hs">
        	<tr>
            	<td width="140" valign="top">Họ tên:</td>
            	<td><input type="text" name="name" class="text_dangky" /><p id="name" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">Địa chỉ:</td>
            	<td><input type="text" name="diachi" class="text_dangky" /><p id="diachi" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">Điện thoại:</td>
            	<td><input type="text" name="phone" class="text_dangky" /><p id="phone" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">Email:</td>
            	<td><input type="text" name="email" class="text_dangky" /><p id="email" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">Trình độ:</td>
            	<td><select name="trinhdo" class="text_dangky">
                	<option value="0">-- Chọn trình độ --</option>
                	<option value="1">Chưa tốt nghiệp phổ thông</option>
                    <option value="2">Tốt nghiệp phổ thông</option>
                    <option value="3">Trung cấp</option>
                    <option value="4">Cao đẳng</option>
                    <option value="5">Đại học</option>
                    <option value="6">Sau đại học</option>
                </select><p id="trinhdo" class="error"></p></td>
            </tr>
        	<tr>
            	<td valign="top">Kinh nghiệm làm việc:</td>
            	<td><textarea name="content" class="text_dangky" style="height:200px; overflow:auto; resize:none"></textarea><br /><span id="kinhnghiem" class="error"></span></td>
            </tr>
        	<tr>
            	<td valign="top"><input type="hidden" name="tuyendung_id" value="<?php echo $row_detail['id'];?>" /></td>
            	<td><input type="button" name="btn_nop_hs" value="Gửi hồ sơ" style="padding:6px 25px" />
                <input type="button" name="btn_huy_nop_hs" value="Hủy" style="padding:6px 25px" /></td>
            </tr>
        </table>
    </div>
</div>
<div id="backgroundPopup"></div>