<div id="popupContact">
    <div id="content_popup">
        <div id="title_popup">ĐẶT MUA</div>
        <div id="info_popup">
        	<div id="ajax_datmua"></div>
            <hr />
            <div id="luuy" style="line-height:22px">
                <p style="text-align:justify; color:#060; font-weight:bold">Điều kiện giao hàng:</p>
                <p style="text-align:justify; padding:0 30px">- Trong Thành phố Hồ Chí Minh</p>
                <p style="text-align:justify; padding:0 30px">- Hóa đơn phải hơn 100.000đ</p>
                <p style="text-align:justify; padding:0 30px; color:#00F; font-weight:bold; margin-bottom:10px">- Trước khi giao hàng nhân viên sẽ liên hệ cho Quí khách</p>
                
                <p style="text-align:justify; color:#060; font-weight:bold">Phí giao hàng:</p>
                <p style="text-align:justify; padding:0 30px">- Phí giao hàng <b style="color:#F00">10.000đ</b> với các quận như: Q.1, Q.3, Q.4, Q.5, Q.6, Q.8, Q.10, Q.11, Q.Tân Bình và Q.Bình Tân</p>
                <p style="text-align:justify; padding:0 30px; margin-bottom:10px">- Phí giao hàng <b style="color:#F00">20.000đ</b> với các quận như: Q.2, Q.9, Q.7, Q.12, Q.Gò Vấp, Q.Phú Nhuận, Q.Bình Thạnh, Q.Bình Chánh, Q.Tân Phú, Q.Hóc Môn, Q.Thủ Đức và Q.Nhà Bè</p>
                
                <p style="margin-bottom:10px"><b><em style="text-decoration:underline">Lưu ý:</em></b> Hiện tại công ty chỉ giao hàng trong Tp.HCM. Quí khách có nhu cầu mua bột trộn sẵn Mikko có thể đến siêu thị Co.opmart, Big C, Metro, Citimart hoặc các cửa hàng đại lý bột Mikko.</p>
            </div>
        </div>
    </div>
</div>
<div id="backgroundPopup"></div>

<script type="text/javascript">
	$(document).ready(function() {
        $(".home_sp_buy, .buy_product").click(function(){
			var info = ($(this).attr("name")).split(" -|- ");
			//var height = $("#popupContact").height();
			var id = info[0];
			var name = info[1];
			var price = parseInt(info[2]);
			var price_km = parseInt(info[3]);
			
			if(price!=0 && price_km!=0) var str_price = '<div id="price_popup">' + price.formatMoney(0, ',' , '.') + ' VNĐ</div><div id="price_ban_popup">' + price_km.formatMoney(0, ',' , '.') + ' VNĐ</div>';
			else var str_price = '<div id="price_ban_popup">' + price.formatMoney(0, ',' , '.') + ' VNĐ</div>';
			
			var str_info = id +' -|- '+ name +' -|- '+ price +' -|- '+ price_km;
			var str = '<div id="name_popup">' +name+ '</div>' + str_price + '<div id="soluong_popup">Số lượng: <input type="text" name="soluong" value="1" /><span id="error_soluong"></span></div>';
			str += '<div style="padding-left:30px"><input type="button" name="btn_datmua" value="ĐẶT MUA" class="btn_popup" style="background-color:#05941E" info="'+ str_info +'" />';
			str += '<input type="button" name="btn_huy" value="Hủy" class="btn_popup popupContactClose" style="background-color:#999" /><span id="checks_thanhtoan"></span></div>';
			$("#ajax_datmua").html(str);
			
			/*show form dat hang*/
			$("#popupContact").height(550);
			centerPopup("fix");
			loadPopup();
			$(window).bind("resize", function(){ centerPopup("fix"); });
			
			$.post("ajax.php",{check_dathang:"check_dathang",lang:"<?php echo $lang;?>"},function(data){
				$("#checks_thanhtoan").html(data);
			});
		});
		
		/*dat hang*/
		$("input[name=btn_datmua]").live("click", function(){
			var info = ($(this).attr("info")).split(" -|- ");
			var name = info[1];
			var soluong = parseInt($("input[name=soluong]").val());
			if(isNaN(soluong)) $("#error_soluong").html("số lượng phải là số");
			else{
				$("#error_soluong").html('');
				$.post("ajax.php",{dathang:"dathang",lang:"<?php echo $lang;?>",id:info[0],name:info[1],price:info[2],price_km:info[3],soluong:soluong},function(data){
					if(data!='0'){
						var str = '<div id="name_popup" style="font-size:110%">Bạn đặt mua thành công: "' +name+ '"</div><br />';
						str += '<div style="padding-left:30px"><input type="button" name="btn_tieptuc" value="TIẾP TỤC MUA" class="btn_popup popupContactClose" style="background-color:#05941E" /><input type="button" name="btn_thanhtoan" value="THANH TOÁN" class="btn_popup" style="background-color:#E66460" /></div>';
						$("#ajax_datmua").html(str);
					}else alert('Lỗi: Vui lòng kiểm tra lại.');
					return true;
				});
			}
		});
		
		$("input[name=btn_thanhtoan]").live("click", function(){
			window.location = 'http://<?php echo $domain.'/'.$row_giohang['url']; ?>'
		});
		
		/*dong popup*/
		$(".popupContactClose,#backgroundPopup").live("click", function(){
			disablePopup();
		});
    });
</script>