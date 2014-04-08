<div id="popupContact">
    <div id="content_popup">
        <div id="title_popup">ĐẶT MUA</div>
        <div id="info_popup">
        	<div id="ajax_datmua"></div>
            <hr />
            <div id="luuy" style="line-height:22px">
            	<p style="margin-bottom:10px"><b><em style="text-decoration:underline">Lưu ý:</em> Hiện tại công ty chỉ giao hàng trong khu vực Trung Tâm Tp.HCM. Quí khách có nhu cầu mua đồ chơi của shopdochoi.com vui lòng đến địa chỉ Số 10 An Điềm, Phường 10, Quận 5, TP. Hồ Chí Minh.</b></p>
                <p style="text-align:justify; padding:0 20px">- Chỉ giao hàng miễn phí ở gần trung tâm thành phố như: Q1, Q2, Q3, Q4, Q5, Q6, Q7, Q8, Q10, Q11, Bình Thạnh, Phú Nhuận, Tân Phú, Tân Bình, Bình Tân <b style="color:#C00">với hóa đơn lớn hơn 100.000đ</b></p>
                <p style="text-align:justify; padding:0 20px">- Còn những khu vực Q9, Q12, Thủ Đức, Củ Chi, Hóc Môn, Bình Chánh, Nhà Bè, Cần Giờ Quí khách phải trả thêm chi phi giao hàng.</p>
                <p style="color:#00F; font-weight:bold; text-align:justify; padding:0 20px">- Trước khi giao hàng nhân viên sẽ liên hệ cho Quí khách</p>
            </div>
        </div>
    </div>
</div>
<div id="backgroundPopup"></div>

<script type="text/javascript">
	$(document).ready(function() {
        $(".home_sp_buy, .buy_product").click(function(){
			var info = ($(this).attr("name")).split(" -|- ");
			var height = $("#popupContact").height();
			var id = info[0];
			var name = info[1];
			var price = parseInt(info[2]);
			var price_km = parseInt(info[3]);
			
			if(price!=0 && price_km!=0) var str_price = '<div id="price_popup">' + price.formatMoney(0, ',' , '.') + ' VNĐ</div><div id="price_ban_popup">' + price_km.formatMoney(0, ',' , '.') + ' VNĐ</div>';
			else var str_price = '<div id="price_ban_popup">' + price.formatMoney(0, ',' , '.') + ' VNĐ</div>';
			
			var str_info = id +' -|- '+ name +' -|- '+ price +' -|- '+ price_km;
			var str = '<div id="name_popup">' +name+ '</div>' + str_price + '<div id="soluong_popup">Số lượng: <input type="text" name="soluong" value="1" maxlength="3" /><span id="error_soluong"></span></div>';
			str += '<div style="padding-left:30px"><input type="button" name="btn_datmua" value="ĐẶT MUA" class="btn_popup" style="background-color:#05941E" info="'+ str_info +'" />';
			str += '<input type="button" name="btn_huy" value="Hủy" class="btn_popup popupContactClose" style="background-color:#999" /><span id="checks_thanhtoan"></span></div>';
			$("#ajax_datmua").html(str);
			
			/*show form dat hang*/
			$("#popupContact").height(height);
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