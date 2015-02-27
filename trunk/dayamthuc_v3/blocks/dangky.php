<!-- Google Code for N&#7897;p &#273;&#417;n &#273;&#259;ng k&yacute; Conversion Page -->
<script type="text/javascript">
/* <![CDATA[ */
var google_conversion_id = 978874428;
var google_conversion_language = "en";
var google_conversion_format = "2";
var google_conversion_color = "ffffff";
var google_conversion_label = "bEbKCKqTnlcQvODh0gM";
var google_remarketing_only = false;
/* ]]> */
</script>
<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
</script>
<noscript>
<div style="display:inline;">
<img height="1" width="1" style="border-style:none;" alt="" src="//www.googleadservices.com/pagead/conversion/978874428/?label=bEbKCKqTnlcQvODh0gM&amp;guid=ON&amp;script=0"/>
</div>
</noscript>

<div class="wrapper"><div class="home_item_3">
	<div id="navigator">
        <a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <hr />
    
    <div id="left">
    <?php
        //echo '<div class="viewpost"><h1 style="color:#0064FB; margin-bottom:20px">'.$row_menu_one['title'].'</h1></div>';
	?>
    	<div id="frmComment" style="margin:0 10px">
			<style type="text/css">
            .style1 {color: #FF0000}
            </style>
            <p style="text-align: left;"><img src="http://www.dayamthuc.vn/upload/tin-tuc/truong-day-nghe-am-thuc.jpg" alt="Chương trình lớp Bếp Trưởng chuyên nghiệp" align="left" border="0px" /></p>
            <p style="text-align:right"><img src="http://www.dayamthuc.vn/upload/tin-tuc/hoi-dau-bep-chuyen-nghiep-sg.jpg" alt="Chương trình lớp Bếp Trưởng chuyên nghiệp" align="" border="0px" /></p>
            <div style="clear:both; height:30px"></div>
            
            <div id="form">
            <table width="550" style="margin-left:50px" border="0" align="center" cellpadding="5" cellspacing="10" id="form_dangky">
              <tr>
                <td colspan="2" style="color:#FF0000; font-size:20px; font-weight:bold;">
                <?php
                if($page != 1){
                    $qr = mysql_query("SELECT name FROM web_info WHERE `delete`=0 AND status=1 AND id='{$page}' ");
                    $row = mysql_fetch_array($qr);
                    echo '<h1 style="font-size:18px; color:#0064FB; margin-bottom:10px">Đăng ký học: '.$row['name'].'</h1>';
                }else echo '<h1 style="font-size:18px; color:#0064FB; margin-bottom:10px">Đăng ký học nấu ăn trực tuyến</h1>';
                ?>
                </td>
              </tr>
              <tr>
                <td align="right" valign="top"><span class="style1">*</span> <?php echo const_contact_name;?>:</td>
                <td><input type="text" name="HoTen" class="text_dangky" value="" maxlength="50" /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><span class="style1">*</span> <?php echo const_contact_phone;?>:</td>
                <td><input type="text" name="DienThoai" class="text_dangky" value="" maxlength="11" /></td>
              </tr>
              <tr>
                <td align="right" valign="top">Ngày sinh:</td>
                <td style="color:#999">
                	<input type="text" name="ngay"  class="text_dangky" maxlength="2" style="width:50px" /> ngày 
                    <input type="text" name="thang" class="text_dangky" maxlength="2" style="width:50px" /> tháng 
                    <input type="text" name="nam"   class="text_dangky" maxlength="4" style="width:80px" /> năm
                </td>
              </tr>
              <tr>
                <td align="right" valign="top"><?php echo const_contact_email;?>:</td>
                <td><input type="text" name="Email" class="text_dangky" value="" maxlength="50" /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><?php echo const_contact_diachi;?>:</td>
                <td><input type="text" name="DiaChi" class="text_dangky" value="" maxlength="250" /></td>
              </tr>
              <tr>
                <td align="right" valign="top">Đã tốt nghiệp:</td>
                <td><select name="TotNghiep" class="select_dangky">
                    <option value="Chưa tốt nghiệp phổ thông">Chưa tốt nghiệp phổ thông</option>
                    <option value="Tốt nghiệp phổ thông">Tốt nghiệp phổ thông</option>
                    <option value="Trung cấp">Trung cấp</option>
                    <option value="Cao đẳng">Cao đẳng</option>
                    <option value="Đại học">Đại học</option>
                    <option value="Sau đại học">Sau đại học</option>
                    </select></td>
              </tr>
              <tr>
                <td align="right" valign="top">Chọn khóa học:</td>
                <td>
                    <select name="KhoaHoc" class="select_dangky">
                    <option value='Chưa chọn khóa học'>--- Chọn khóa học ---</option>
                    <?php
					if($lang=='vi'){
						$i = 0;
                    	$chuongtrinh = $tc->chuongtrinhdaotao(3);
						while($row = mysql_fetch_array($chuongtrinh)){
							$i++;
							if($i!=1){
								$view_ct .= '<optgroup label="'.$row['name'].'">';
								$chuongtrinh2 = $tc->chuongtrinhdaotao($row['id']);
								$ct_info = $tc->chuongtrinhdaotao_info($row['id']);
								while($row_ct_info = mysql_fetch_assoc($ct_info)) {
									if($page!=$row_ct_info['id']) $selected = ''; else $selected = 'selected="selected"';
									$view_ct .= '<option value="'.$row_ct_info['name'].'" '.$selected.'>'.$row_ct_info['name'].'</option>';
								}
								$view_ct .= "</optgroup>";
							}else{
								$view_ct .= '<optgroup label="'.$row['name'].'">';
								$chuongtrinh2 = $tc->chuongtrinhdaotao($row['id']);
								while($row2 = mysql_fetch_array($chuongtrinh2)){
									$view_ct .= '<optgroup label=" &nbsp; - '.$row2['name'].'">';
									$ct_info = $tc->chuongtrinhdaotao_info($row2['id']);
									while($row_ct_info = mysql_fetch_assoc($ct_info)) {
										if($page!=$row_ct_info['id']) $selected = ''; else $selected = 'selected="selected"';
										$view_ct .= '<option value="'.$row_ct_info['name'].'" '.$selected.'> &nbsp; + '.$row_ct_info['name'].'</option>';
									}
									$view_ct .= "</optgroup>";
								}
								$view_ct .= "</optgroup>";
							}
						}
					}elseif($lang=='cn'){
						$chuongtrinh = $tc->chuongtrinhdaotao(318);
						while($row = mysql_fetch_array($chuongtrinh)){
							$view_ct .= '<option value="'.$row['name'].'" '.$selected.'>'.$row['name'].'</option>';
						}
					}
                    echo $view_ct;
                    ?>
                    </select>
                </td>
              </tr>
              <tr>
                <td align="right" valign="top">Chọn nơi học:</td>
                <td>
                    <select name="NoiHoc" class="select_dangky">
                    <option value='Tp.HCM'>Tp.HCM</option>
                    <option value='DaNang'>Đà Nẵng</option>
                    <!--<option value='DaLat'>Đà Lạt</option>
                    <option value='CanTho'>Cần Thơ</option>-->
                    </select>
                </td>
              </tr>
              <tr>
                <td align="right" valign="top">Thông tin thêm:</td>
                <td>
                    <select name="thongtin_khac" class="select_dangky">
                    <option value='Không'>Bạn biết khóa học này qua đâu?</option>
                    <option value='Tìm kiếm trên Google'>Tìm kiếm trên Google</option>
                    <option value='Facebook'>Facebook</option>
                    <option value='Báo chí'>Báo chí</option>
                    <option value='Đã biết website trường NETSPACE'>Đã biết website trường NETSPACE</option>
                    </select>
                </td>
              </tr>
              <tr>
              	<td align="right" valign="top">Khác:</td>
                <td><textarea name="ThanhVienHoi" class="text_dangky" style="height:80px; line-height:20px; overflow:auto; resize:none"></textarea></td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input type="submit" name="btnSendDK" value="ĐĂNG KÝ" class="btn_dangky" /></td>
              </tr>
            </table>
            </div>
        </div>
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:1px"></div>
</div></div>