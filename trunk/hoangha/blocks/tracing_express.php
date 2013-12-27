<?php
$navigator = '<div id="navigator"><a href="http://'.$domain.'/'.$lang.'/"><img src="images/home.jpg" alt="Hoang Ha Logistics" /></a> <span>&gt;&gt;</span> <a href="'.$lang.'/'.$row_menu_one['url'].'">'.$row_menu_one['name'].'</a></div>';
echo $navigator;

$qr = $tc->select_tracking_express($page);
$row_tracking = mysql_fetch_array($qr);
?>
<div style="clear:both; height:10px"></div>
<div class="viewpost">
    <h1 style="font-size:24px"><?php echo $row_menu_one['name'];?></h1>
    <h2><?php echo $row_menu_one['metaDescription'];?></h2><br /><br />
    <table width="500" border="0" cellpadding="0" cellspacing="10" style="margin:auto">
    	<tr>
        	<td width="80"><?php echo const_contact_ma; ?> BP/BK:</td>
        	<td><input type="text" name="ma_buupham_form" value="<?php echo $page; ?>" style="width:250px; height:25px; line-height:25px; padding:0 5px; border:solid 1px #999" /></td>
        	<td><a href="javascript:;" class="input_btn_form" name="<?php echo $lang.'/'.$danhmuc.'_page_'; ?>" style="padding:4px 25px; font-size:120%; font-weight:bold; color:#FFF; border:none; background-color:#F00; cursor:pointer">Tracking</a>
            <script type="text/javascript">
			$(document).ready(function() {
                $('.input_btn_form').click(function(){
					var ma_buupham = $.trim($('input[name=ma_buupham_form]').val());
					if(ma_buupham!=''){
						var url = $(this).attr('name');
						$(this).attr('href',url + ma_buupham + '/');
						return true;
					}else{
						alert('Vui lòng nhập mã số vận chuyển.');
						$('input[name=ma_buupham_form]').focus();
						return false;
					}
				});
            });
			</script>
            </td>
        </tr>
    </table>
    <div id="form_bill" style="margin-top:50px">
    <?php if(mysql_num_rows($qr)==1){ ?>
    	<table width="800" border="0" cellpadding="0" cellspacing="0" style="line-height:35px; margin:auto; font-weight:bold">
            <tr>
                <td colspan="4" style="color:#F00; font-size:16px">THÔNG TIN HÓA ĐƠN: <?php echo $page; ?></td>
            </tr>
            <tr bgcolor="#666" style="color:#FFF">
                <th colspan="2" align="left" style="padding-left:45px">THÔNG TIN NHẬN HÀNG</th>
                <th colspan="2" align="left" style="padding-left:45px">THÔNG TIN PHÁT HÀNG</th>
            </tr>
            <tr bgcolor="#FFFF99">
                <td width="130" align="right" style="padding-right:5px">Mã Bill:</td>
                <td width="300" style="color:#00F"><?php echo $row_tracking['name']; ?></td>
                <td width="130" align="right" style="padding-right:5px">Trạng thái:</td>
                <td width="300" style="color:#00F"><?php if($row_tracking['status']==1) echo 'Đã đến nơi '; elseif($row_tracking['status']==0) echo 'Đang phát'; else echo 'Đang vận chuyển'; ?></td>
            </tr>
            <tr bgcolor="#FFFF99">
                <td align="right" style="padding-right:5px">Nơi gởi:</td>
                <td style="color:#00F"><?php echo $row_tracking['noi_gui']; ?></td>
                <td align="right" style="padding-right:5px">Người nhận:</td>
                <td style="color:#00F"><?php echo $row_tracking['nguoi_nhan']; ?></td>
            </tr>
            <tr bgcolor="#FFFF99">
                <td align="right" style="padding-right:5px">Bưu cục gởi:</td>
                <td style="color:#00F"><?php echo $row_tracking['buucuc_gui']; ?></td>
                <td align="right" style="padding-right:5px">Bưu cục phát:</td>
                <td style="color:#00F"><?php echo $row_tracking['buucuc_nhan']; ?></td>
            </tr>
            <tr bgcolor="#FFFF99">
                <td align="right" style="padding-right:5px">Thời gian gởi:</td>
                <td style="color:#00F"><?php echo date('H:i d/m/Y',strtotime($row_tracking['ngay_gui'])); ?></td>
                <td align="right" style="padding-right:5px">Thời gian nhận:</td>
                <td style="color:#00F"><?php echo date('H:i d/m/Y',strtotime($row_tracking['date_update'])); ?></td>
            </tr>
            <tr bgcolor="#FFFF99">
                <td align="right" style="padding-right:5px">Loại hàng:</td>
                <td style="color:#00F"><?php echo $row_tracking['loaihang']; ?></td>
                <td align="right" style="padding-right:5px">Trọng lượng (g):</td>
                <td style="color:#00F"><?php echo $row_tracking['trongluong']; ?></td>
            </tr>
        </table><br />
        <table width="800" border="0" cellpadding="0" cellspacing="0" style="line-height:25px; margin:auto">
            <tr>
                <td colspan="4" style="color:#00F; font-size:14px; font-weight:bold">HÀNH TRÌNH PHÁT:</td>
            </tr>
            <tr style="background-color:#666; color:#FFF; font-weight:bold">
                <td width="130" style="padding-left:5px">Ngày</td>
                <td width="250">Bưu cục</td>
                <td>Ghi chú</td>
            </tr>
            <?php
            $qr = $tc->select_tracking_express_detail($row_tracking['id']);
			while($row = mysql_fetch_array($qr)){
				echo '<tr>
					<td style="border-bottom:dotted 1px #CCC; padding-left:5px">'.date('d/m/Y H:i',strtotime($row['date_update'])).'</td>
					<td style="border-bottom:dotted 1px #CCC">'.$row['name'].'</td>
					<td style="border-bottom:dotted 1px #CCC">'.$row['notes'].'&nbsp;</td>
				</tr>';
			}
			?>
        </table>
    <?php } ?>
    </div>
    <div style="clear:both; height:30px"></div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    
});
</script>