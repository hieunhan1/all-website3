<div class='boxleft'>
    <div class='titleleft'></div>
    <div class='titlecenter'><a href='booking.htm'>Đăng ký trực tuyến</a></div>
    <div class='titleright'></div>
    <div style='clear:both'></div>
    <div id="frmComment">
    	<style type="text/css">
		.style1 {color: #FF0000}
		</style>

        <p style="text-align: left;"><img src="http://www.dayamthuc.vn/upload/tin-tuc//truong-day-nghe-am-thuc.jpg" alt="Chương trình lớp Bếp Trưởng chuyên nghiệp" align="left" border="0px" /></p>

        <p style="text-align: right;"><img src="http://www.dayamthuc.vn/upload/tin-tuc//hoi-dau-bep-chuyen-nghiep-sg.jpg" alt="Chương trình lớp Bếp Trưởng chuyên nghiệp" align="" border="0px" /></p>
		
        <div id="form">
        <table width="700" border="0" align="center" cellpadding="5" cellspacing="10" class="lienhe" id="form_dangky">
          <tr>
            <td colspan="2" style="color:#FF0000; font-size:20px; font-weight:bold;"><input type="hidden" name="KhoaHoc" class="textLH" value="<?php echo $dangkyhoc;?>" size="50" /><?php echo $dangkyhoc;?></td>
          </tr>
          <tr>
            <td align="right" valign="top"><span class="style1">*</span> Họ và tên:</td>
            <td><input type="text" name="HoTen" class="textLH" value="<?=$_POST["HoTen"]?>" size="50" /></td>
          </tr>
          <tr>
            <td align="right" valign="top"><span class="style1">*</span> Ngày sinh:</td>
            <td><input type="text" name="NgaySinh" class="textLH" value="<?=$_POST["NgaySinh"]?>" size="50" /></td>
          </tr>
          <tr>
            <td align="right" valign="top"><span class="style1">*</span> Email:</td>
            <td><input type="text" name="Email" class="textLH" value="<?=$_POST["Email"]?>" size="50" /></td>
          </tr>
          <tr>
            <td align="right" valign="top"><span class="style1">*</span> Địa chỉ:</td>
            <td><input type="text" name="DiaChi" class="textLH" value="<?=$_POST["DiaChi"]?>" size="50" /></td>
          </tr>
          <tr>
            <td align="right" valign="top"><span class="style1">*</span> Điện thoại:</td>
            <td><input type="text" name="DienThoai" class="textLH" value="<?=$_POST["DienThoai"]?>" size="50" /></td>
          </tr>
          <tr>
            <td align="right" valign="top">Đã tốt nghiệp:</td>
            <td><select name="TotNghiep" style="width:333px;">
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
				<select name="KhoaHoc" style="width:333px;">
				<option value='Chưa chọn khóa học'>--- Chọn khóa học ---</option>
				<?php
					if(@$page) $id_choose = $page; else $id_choose = 0;
					$chuongtrinh = $tc->chuongtrinhdaotao(3);
					while($row_ct = mysql_fetch_assoc($chuongtrinh))
					{
						$list[]=$row_ct;
					}
					foreach($list as $list_cm)
					{
						echo "<optgroup label='".$list_cm['name']."'>";
						if($list_cm['id']==22)
						{
							$cmchuongtrinh=$tc->chuongtrinhdaotao($list_cm['id'],NULL);
							$list_cmct="";
							while($row_ctcm=mysql_fetch_assoc($cmchuongtrinh))
							{
								$list_cmct[]=$row_ctcm;
							}
							foreach($list_cmct as $list2)
							{
								echo "<optgroup label='&nbsp;&nbsp;+".$list2['name']."'>";
								$cmchuongtrinh2=$tc->BaiVietTrangChu($list2['id'],NULL);
								$list_cmct2="";
								while($row_ctcm2=mysql_fetch_assoc($cmchuongtrinh2))
								{
									$list_cmct2[]=$row_ctcm2;
								}
								foreach($list_cmct2 as $list3)
								{
									echo "<option value='".$list3['name']."'>".$list3['name']."</option>";
								}
								echo "</optgroup>";
							}
						}
						else
						{
							$cmchuongtrinh=$tc->chuongtrinhdaotao($list_cm['id'],NULL);
							$list_cmct="";
							while($row_ctcm=mysql_fetch_assoc($cmchuongtrinh))
							{
								$list_cmct[]=$row_ctcm;
							}
							foreach($list_cmct as $list2)
							{
								$cmchuongtrinh2=$tc->BaiVietTrangChu($list2['id'],NULL);
								$list_cmct2="";
								while($row_ctcm2=mysql_fetch_assoc($cmchuongtrinh2))
								{
									$list_cmct2[]=$row_ctcm2;
								}
								foreach($list_cmct2 as $list3)
								{
									echo "<option value='".$list3['name']."'>".$list3['name']."</option>";
								}
							}
						}
						echo "</optgroup>";
					}
				?>
				</select>
			</td>
          </tr>
		  <tr>
			<td align="right" valign="top">Chọn nơi học:</td>
            <td>
				<select name="NoiHoc" style="width:333px;">
				<option value='Tp.HCM'>Tp.HCM</option>
				<option value='Đà Nẵng'>Đà Nẵng</option>
				<option value='Cần Thơ'>Cần Thơ</option>
                </select>
			</td>
		  </tr>
          <tr>
            <td colspan="2"><em>Là thành viên Hội đầu bếp chuyên nghiệp Sài Gòn:</em>
              <input type="radio" name="ThanhVienHoi" value="Có" />Có &nbsp; 
              <input type="radio" name="ThanhVienHoi" value="Không" checked="checked" />Không
            </td>
          </tr>
          <tr><td>&nbsp;</td>
            <td><input name="btnSend" type="submit" value="ĐĂNG KÝ" style="padding:5px 25px" /></td>
          </tr>
        </table>
		</div>
    </div>
    <div style="clear:both; height:20px;"></div><br /><br />
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
			$.post("ajax.php",{dangky:"dangky",HoTen:HoTen,NgaySinh:NgaySinh,Email:Email,DiaChi:DiaChi,DienThoai:DienThoai,TotNghiep:TotNghiep,KhoaHoc:KhoaHoc,NoiHoc:NoiHoc,ThanhVienHoi:ThanhVienHoi},function(data){
				if(data!='0') setTimeout(function(){ $("#form").html('<p style="color:blue; font-size:16px; font-weight:bold; padding:30px 0 60px 30px;">Đăng ký thành công. Chúng tôi sẽ liên hệ Quý khách sớm nhất</p>'); },200);
				else $("#form").html('<p style="color:#F00; font-weight:bold; padding:30px 0 60px 30px;">Có sự cố. Vui lòng ấn F5 thử lại.</p>');
			});
			return true;
		}
	});
});
</script>