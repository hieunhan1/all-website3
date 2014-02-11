<div id="content">
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
                    $qr = mysql_query("SELECT name FROM info WHERE `delete`=0 AND status=1 AND id='{$page}' ");
                    $row = mysql_fetch_array($qr);
                    echo '<h1 style="font-size:18px; color:#0064FB; margin-bottom:10px">Đăng ký học: '.$row['name'].'</h1>';
                }else echo '<h1 style="font-size:18px; color:#0064FB; margin-bottom:10px">Đăng ký học nấu ăn trực tuyến</h1>';
                ?>
                </td>
              </tr>
              <tr>
                <td align="right" valign="top"><span class="style1">*</span> Họ và tên:</td>
                <td><input type="text" name="HoTen" class="text_dangky" value="<?=$_POST["HoTen"]?>" size="50" /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><span class="style1">*</span> Ngày sinh:</td>
                <td><input type="text" name="NgaySinh" class="text_dangky" value="<?=$_POST["NgaySinh"]?>" size="50" /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><span class="style1">*</span> Email:</td>
                <td><input type="text" name="Email" class="text_dangky" value="<?=$_POST["Email"]?>" size="50" /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><span class="style1">*</span> Địa chỉ:</td>
                <td><input type="text" name="DiaChi" class="text_dangky" value="<?=$_POST["DiaChi"]?>" size="50" /></td>
              </tr>
              <tr>
                <td align="right" valign="top"><span class="style1">*</span> Điện thoại:</td>
                <td><input type="text" name="DienThoai" class="text_dangky" value="<?=$_POST["DienThoai"]?>" size="50" /></td>
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
                    <option value='CanTho'>Cần Thơ</option>
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
                <td colspan="2"><em>Là thành viên Hội đầu bếp chuyên nghiệp Sài Gòn:</em>
                  <input type="radio" name="ThanhVienHoi" value="Có" /> Có &nbsp; &nbsp; 
                  <input type="radio" name="ThanhVienHoi" value="Không" checked="checked" /> Không
                </td>
              </tr>
              <tr>
                <td>&nbsp;</td>
                <td><input name="btnSend" type="submit" value="ĐĂNG KÝ" class="btn_dangky" /></td>
              </tr>
            </table>
            </div>
        </div>
        <script type="text/javascript">
        $(document).ready(function(e) {
            $("input[name=btnSend]").click(function(){
                var HoTen = $("input[name=HoTen]").val();
                var NgaySinh = $("input[name=NgaySinh]").val();
                var Email = $("input[name=Email]").val();
                var DiaChi = $("input[name=DiaChi]").val();
                var DienThoai = $("input[name=DienThoai]").val();
                var TotNghiep = $("select[name=TotNghiep]").val();
                var KhoaHoc = $("select[name=KhoaHoc]").val();
                var NoiHoc = $("select[name=NoiHoc]").val();
                var ThanhVienHoi = $("input[name=ThanhVienHoi]:checked").val();
                var thongtin_khac = $("select[name=thongtin_khac]").val();
                if(HoTen.length<3){
                    alert("Nhập họ tên");
                    $("input[name=HoTen]").focus();
                    return false;
                }else if(NgaySinh.length<6){
                    alert("Nhập ngày sinh");
                    $("input[name=NgaySinh]").focus();
                    return false;
                }else if(!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(Email))){
                    alert("Nhập email");
                    $("input[name=Email]").focus();
                    return false;
                }else if(DiaChi.length<6){
                    alert("Nhập địa chỉ");
                    $("input[name=DiaChi]").focus();
                    return false;
                }else if(DienThoai.length<6){
                    alert("Nhập điện thoại");
                    $("input[name=DienThoai]").focus();
                    return false;
                }else{
                    $("#form").html('<p style="font-weight:bold; padding:30px">Đang xử lý...</p>');
                    $.post("ajax.php",{dangky:"dangky",HoTen:HoTen,NgaySinh:NgaySinh,Email:Email,DiaChi:DiaChi,DienThoai:DienThoai,TotNghiep:TotNghiep,KhoaHoc:KhoaHoc,NoiHoc:NoiHoc,ThanhVienHoi:ThanhVienHoi,thongtin_khac:thongtin_khac},function(data){
                        if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:blue; font-size:16px; font-weight:bold; padding:30px 0 60px 30px;">Đăng ký thành công. Trường NETSPACE sẽ liên hệ Bạn vào ngày 10/02/2014. Chúc năm mới Vạn Sự Như Ý.</p>'); },200);
                        else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 10px 60px 10px;">Có sự cố. Vui lòng ấn F5 thử lại.</p>');
                        //Đăng ký thành công. Chúng tôi sẽ liên hệ Quý khách sớm nhất để thông báo lịch học
                    });
                    return true;
                }
            });
        });
        </script>
    
    </div>
    
    <?php include_once('blocks/right.php'); ?>
	
    <div style="clear:both; height:10px"></div>
    <div><a href="javascript:;" id="run_top" title="Lên đầu trang"><img src="images/top.jpg" alt="top" /></a></div>
    <div style="clear:both; height:20px"></div>
</div>