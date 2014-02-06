<div style="clear:both; height:20px"></div>
<?php include_once('blocks/left.php');?>
<div id="right" style="font-size:14px">
	<div id="navigator">
    	<a href=""><img src="images/home.jpg" alt="trang chủ" /></a>
        <?php echo $tc->navigator($idMenu); ?>
    </div>
    <?php
	if($row_detail['price']!=0 && $row_detail['price_km']==0){
		$price = '<p style="color:#ED1E24; font-size:150%; font-weight:bold">'.number_format($row_detail['price'],0,',','.').' VNĐ</p><br />';
		$giathanhtoan = $row_detail['price'];
	}elseif($row_detail['price']!=0 && $row_detail['price_km']!=0){
		$price = '<p style="color:#666; font-size:110%; font-weight:bold; text-decoration:line-through">'.number_format($row_detail['price'],0,',','.').' VNĐ</p><br /><p>Giá khuyến mãi: <span style="color:#ED1E24; font-size:150%; font-weight:bold">'.number_format($row_detail['price_km'],0,',','.').' VNĐ</span></p><br />';
		$giathanhtoan = $row_detail['price_km'];
	}else{
		$price = '<p style="color:#666; font-size:130%; font-weight:bold">Liên hệ để biết giá</p><br />';
		$giathanhtoan = 0;
	}
    echo '<h1>'.$row_detail['name'].'</h1><br />
	<img src="'.url_product_image.$row_detail['url_hinh'].'" alt="'.$row_detail['name'].'" title="'.$row_detail['name'].'" style="float:left; margin-right:30px" /><br /><br />
	'.$price.'
	<p>Số lượng: <input type="text" name="txtsoluong" class="txtsoluong" value="1" /></p><br />
	<p class="buy" name="'.$row_detail['id'].' -|- '.$row_detail['name'].' -|- '.$giathanhtoan.'">Bỏ vào giỏ hàng</p>
	<div style="clear:both; height:10px"></div>
	<div class="viewpost">'.$row_detail['content'].'</div>';
	
	
	?>
    <hr />
    <div style="color:#777; font-weight:bold; font-size:150%; margin-bottom:15px; padding-left:3px">Sản phẩm cùng loại</div>
    <?php
    echo '<div class="list_product">';
	$qr2 = $tc->home_list_product($idMenu, 4, $row_detail['id']);
	while($row2 = mysql_fetch_array($qr2)){
		$i++;
		$style = 'style="width:180px; margin:3px"';
		
		if($row2['price']!=0 && $row2['price_km']==0) $price = '<div class="item_product_price">'.number_format($row2['price'],0,',','.').' VNĐ</div>';
		elseif($row2['price']!=0 && $row2['price_km']!=0) $price = '<div class="item_product_price_km">'.number_format($row2['price'],0,',','.').' VNĐ</div>
		<div class="item_product_price">'.number_format($row2['price_km'],0,',','.').' VNĐ</div>';
		else $price = '<div class="item_product_price" style="color:#666">Liên hệ để biết giá</div>';
		
		echo '<div class="item_product" '.$style.'>
			<a href="'.$row_menu_one['url'].$row2['name_rewrite'].'.html"><div class="item_product_img"><img src="'.url_product_image_thumb.$row2['url_hinh'].'" alt="'.$row2['name'].'" /></div>
			<h3>'.$row2['name'].'</h3></a>'.$price.'
		</div>';
	}
	echo '</div>';
	?>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $(".buy").click(function(){
		var info = ($(this).attr("name")).split(" -|- ");
		var soluong = $('input[name=txtsoluong]').val();
		if(!isNaN(soluong)){
			if(confirm('Bạn có muốn mua: ' + info[1] + '?')){
				$.post("ajax.php",{dathang:"dathang",id:info[0],name:info[1],price:info[2],soluong:soluong},function(data){
					if(data!='0'){
						window.location = data;
					}else{
						alert("Đặt hàng không thành công. Vui lòng kiểm tra lại");
						return false;
					}
				});
			}
		}else{
			alert('"Số lượng" phải là số');
			return false;
		}
	});
});
</script>