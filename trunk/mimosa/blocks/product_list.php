<?php
if(@$dt){
	$title = "<h4>{$row_menu_one['title']}</h4> <h5>{$row_menu_one['metaDescription']}</h5>";
	if($row_detail['price']!=0) $price = number_format($row_detail['price'],0,',','.').' vnđ'; else $price = const_contact;
	echo '<div id="popupContact">
		<div style="width:955px;height:30px; float:right; text-align:right; position:absolute; z-index:1300;">
			<a href="'.$lang.'/'.$row_menu_one['url'].'"><img src="images/close.png" alt="sản phẩm" /></a>
		</div>
		<div style="clear:both; height:15px"></div>
		<div style="clear:both; height:5px; background-color:#3A3A3A"></div>
		
		<div id="content_popup">
			<div class="img"><img src="'.url_product_image.$row_detail['url_hinh'].'" alt="'.$row_detail['name'].'" /></div>
			<div id="content_pp">
				<h1>'.$row_detail['name'].'</h1>
				<div style="width:auto; float:left; margin-top:10px; color:#CCC">Size: '.$row_detail['kichthuoc'].' &nbsp; &nbsp; '.const_price.$price.'</div>
				<div class="lienhe">'.const_contact.'</div>
				<div class="dathang" info="'.$row_detail['name'].' -|- '.$row_detail['kichthuoc'].' -|- '.$row_detail['price'].' -|- '.$row_detail['id'].'"><img src="images/giohang.png" alt="đặt hàng" /></div>
				<div style="clear:both; height:1px"></div>
				'.$row_detail['content'].'
			</div>
			<!--<div id="info_sp">
				<p><b>Chất liệu:</b> '.$row_detail['chatlieu'].'</p>
				<p><b>Kích thước:</b> '.$row_detail['kichthuoc'].'</p>
				<p><b>Tiết diện:</b> '.$row_detail['tietdien'].'</p>
			</div>-->
			<div style="clear:both; height:1px"></div>
		</div>
	</div>
	<div id="backgroundPopup"></div>
	<script type="text/javascript">
	$(document).ready(function() {
		var height = $("#popupContact").height();
		$("#popupContact").height(height);
		centerPopup("absolute");
		loadPopup();
		$(window).bind("resize", function(){ centerPopup("absolute"); });
	});</script>';
}else $title = "<h1>{$row_menu_one['title']}</h1> <h2>{$row_menu_one['metaDescription']}</h2>";
?>
<div id="left">
    <div id="support">
    	<p>Hỗ trợ trực tuyến</p>
        <?php
		$hotline = explode(' - ',$row_config['facebook']);
        echo '<a href="ymsgr:sendIM?'.$row_config['yahoo'].'"><img src="http://opi.yahoo.com/online?u='.$row_config['yahoo'].'&m=g&t=1" style="padding:5px 0" /></a><br />
        <p>Hotline: '.$hotline[0].'</p><span>'.$hotline[1].'</span>';
		?>
    </div>
	<?php
    $qr = $tc->menu($menu_root,3,$lang);
	while($row = mysql_fetch_array($qr)){
		echo '<div class="left_title"><a href="'.$lang.'/'.$row['url'].'">'.$row['name'].'</a></div>';
		$qr2 = $tc->menu($row['id'],3,$lang);
		while($row2 = mysql_fetch_array($qr2)){
			if($idMenu != $row2['id']) echo '<div class="left_item"><a href="'.$lang.'/'.$row2['url'].'">'.$row2['name'].'</a></div>';
			else echo '<div class="left_item"><a href="'.$lang.'/'.$row2['url'].'" style="background-color:#8D8D8D">'.$row2['name'].'</a></div>';
		}
	}
	?>
</div>

<div id="right">
	<?php echo $title;?>
	<div id="list_product">
	<?php
	$from = (($page - 1) * max_product);
	$select = 'id,name,name_rewrite,url_hinh,description,menu_id,kichthuoc,price';
	$table = 'products';
	$where = "`delete`=0 AND status=1 AND menu_id LIKE '%,{$idMenu},%'";
	$limit = "LIMIT {$from},".max_product;
	$list = $tc->list_item($select,$table,$where,$limit);
	$total = mysql_num_rows($list);
	
    while($row = mysql_fetch_array($list)){
		$link = $lang.'/'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html';
		if($row['price']!=0) $price = number_format($row['price'],0,',','.').' vnđ'; else $price = const_contact;
        echo '<div class="item_product">
            <div class="img"><a href="'.$link.'"><img src="'.url_product_thumb_image.$row['url_hinh'].'" alt="'.$row['name'].'" /></a></div>
            <div class="product_title">
				<a href="'.$link.'" title="'.$row['name'].'"><h3>'.$row['name'].'</h3></a>
				<div class="lienhe">'.const_contact.'</div>
				<div class="dathang" info="'.$row['name'].' -|- '.$row['kichthuoc'].' -|- '.$row['price'].' -|- '.$row['id'].'"><img src="images/giohang.png" alt="đặt hàng" /></div>
			</div>
			<div style="font-size:80%; text-align:center; line-height:22px">Size: '.$row['kichthuoc'].' &nbsp; &nbsp; '.const_price.$price.'</div>
        </div>';
    }
	
	$phantrang = $tc->phantrang($lang.'/'.$danhmuc,$page,max_product,'id',$table,$where);
	echo '<div style="clear:both; height:20px"></div><div id="phantrang" style="padding-left:25px">'.$phantrang.'</div>';
    ?>
    </div>
</div>
<script type="text/javascript">
$(document).ready(function() {
    $(".dathang").click(function(){
		var info = ($(this).attr("info")).split(" -|- ");
		//if(confirm('Bạn có muốn mua: ' + info[0] + '?')){
			$.post("ajax.php",{dathang:"dathang",name:info[0],kichthuoc:info[1],price:info[2],id:info[3],lang:"<?php echo $lang;?>"},function(data){
				if(data!='0'){
					window.location = "<?php echo "http://{$domain}";?>" + data;
				}else{
					alert("Đặt hàng không thành công. Vui lòng kiểm tra lại");
					return false;
				}
			});
		//}
	});
});
</script>