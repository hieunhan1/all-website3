<?php
if($page == 'logout'){
	session_destroy();
	header("location: http://{$domain}");
}
if(!@$_SESSION['user_id']) header("location: http://{$domain}");

$qr = $tc->select_user();
$row = mysql_fetch_array($qr);
?>
<div class="viewpost" style="margin:15px 30px">
	<div id="thongtinhocvien_update" style="display:none">
    	<table width="80%" border="0" cellpadding="0" cellspacing="15" style="margin:auto">
            <tr>
                <th colspan="2" style="background:#09C; padding:5px 0; color:#FFF; font-weight:bold; font-size:110%">CẬP NHẬT THÔNG TIN HỌC VIÊN</th>
            </tr>
            <tr>
                <td align="right" width="25%">Họ tên:</td>
                <td><input type="text" name="name" value="<?php echo $row['name']; ?>" class="txt_update_hocvien" /></td>
            </tr>
            <tr>
                <td align="right" width="25%">Ngày sinh:</td>
                <td>
                <input type="text" name="ngay" value="" class="txt_update_hocvien" maxlength="2" style="width:60px" /> dd/ 
                <input type="text" name="thang" value="" class="txt_update_hocvien" maxlength="2" style="width:60px" /> mm/ 
                <input type="text" name="nam" value="" class="txt_update_hocvien" maxlength="4" style="width:120px" />yyyy
                </td>
            </tr>
            <tr>
                <td align="right" width="25%">Giới tính:</td>
                <td><select name="gioitinh" class="txt_update_hocvien" style="width:100px">
                	<option value="1" <?php if($row['gioitinh']==1) echo 'selected="selected"'; ?> >Nam</option>
                	<option value="0" <?php if($row['gioitinh']==0) echo 'selected="selected"'; ?> >Nữ</option>
                </select></td>
            </tr>
            <tr>
                <td align="right">Email:</td>
                <td><input type="text" name="email" value="<?php echo $row['email']; ?>" class="txt_update_hocvien" /></td>
            </tr>
            <tr>
                <td align="right">Điện thoại:</td>
                <td><input type="text" name="phone" value="<?php echo $row['phone']; ?>" class="txt_update_hocvien" /></td>
            </tr>
            <tr>
                <td align="right">Địa chỉ:</td>
                <td><input type="text" name="diachi" value="<?php echo $row['diachi']; ?>" class="txt_update_hocvien" /></td>
            </tr>
            <tr><td>&nbsp;</td>
            <td><input type="button" name="btn_change" value="Thay đổi" style="padding:5px 20px; font-size:100%" />
            <input type="button" name="btn_cancel" value="Hủy" style="padding:5px 20px; font-size:100%" /></td></tr>
        </table>
    </div>
    
    <div id="thongtinhocvien_pass" style="display:none">
    	<table width="80%" border="0" cellpadding="0" cellspacing="15" style="margin:auto">
            <tr>
                <th colspan="2" style="background:#09C; padding:5px 0; color:#FFF; font-weight:bold; font-size:110%">THAY ĐỔI MẬT KHẨU</th>
            </tr>
            <tr>
                <td align="right" width="31%">Mật khẩu cũ:</td>
                <td><input type="password" name="pass_cu" class="txt_update_hocvien" /></td>
            </tr>
            <tr>
                <td align="right">Mật khẩu mới:</td>
                <td><input type="password" name="pass_moi" class="txt_update_hocvien" /></td>
            </tr>
            <tr>
                <td align="right">Nhập lại mật khẩu:</td>
                <td><input type="password" name="pass_moi_2" class="txt_update_hocvien" /></td>
            </tr>
            <tr><td>&nbsp;</td>
            <td><input type="button" name="btn_change_pass" value="Thay đổi" style="padding:5px 20px; font-size:100%" />
            <input type="button" name="btn_cancel" value="Hủy" style="padding:5px 20px; font-size:100%" /></td></tr>
        </table>
    </div>
    
	<div id="thongtinhocvien">
        <table width="80%" border="0" cellpadding="0" cellspacing="10" style="margin:auto">
            <tr>
                <th colspan="2" style="background:#09C; padding:5px 0; color:#FFF; font-weight:bold; font-size:110%">THÔNG TIN HỌC VIÊN</th>
            </tr>
            <tr>
                <td align="right" width="50%">Họ tên:</td>
                <td><?php echo $row['name']; ?>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="50%">Ngày sinh:</td>
                <td><?php echo date('d/m/Y',strtotime($row['ngaysinh'])); ?>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" width="50%">Giới tính:</td>
                <td><?php if($row['gioitinh']==1) echo 'Nam'; else echo 'Nữ'; ?>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">Email:</td>
                <td><?php echo $row['email']; ?>&nbsp;</td>
            </tr>
            <tr>
                <td align="right">Điện thoại:</td>
                <td><?php echo $row['phone']; ?>&nbsp;</td>
            </tr>
            <tr>
                <td align="right" valign="top">Địa chỉ:</td>
                <td><?php echo $row['diachi']; ?>&nbsp;</td>
            </tr>
            <tr><th colspan="2"><input type="button" name="btn_update_user" value="Cập nhật thông tin" style="padding:5px 20px; font-size:100%" />
            <input type="button" name="btn_update_pass" value="Đổi mật khẩu" style="padding:5px 20px; font-size:100%" /></th></tr>
        </table><br />
        
        <?php
		$qr = $tc->select_lophoc();
		while($row = mysql_fetch_array($qr)){
			$str_lophoc .= '<div class="select_lophoc select_lophoc_'.$row['id'].'">'.$row['name'].'</div>';
			$qr_d = $tc->select_bangdiem($row['id']);
			$row_d = mysql_fetch_array($qr_d);
			
			$str_cotdiem .= '<tbody class="ds_cotdiem ds_cotdiem_'.$row['id'].'">';
			for($i=1; $i<=8; $i++){
				if($row_d['diem'.$i] != 0){
					$str_cotdiem .= '<tr><td align="right" width="50%">Cột điểm '.$i.':</td>
					<td>'.$row_d['diem'.$i].'&nbsp;</td></tr>';
				}
			}
			$str_cotdiem .= '</tbody>';
		}
        ?>
        <table width="80%" border="0" cellpadding="0" cellspacing="10" style="margin:auto">
            <tr>
                <th colspan="2" style="background:#09C; padding:5px 0; color:#FFF; font-weight:bold; font-size:110%">THÔNG TIN ĐIỂM</th>
            </tr>
            <tr>
                <th colspan="2">
                    <?php echo $str_lophoc; ?>
                </th>
            </tr>
            <?php echo $str_cotdiem; ?>
        </table>
	</div>
</div>