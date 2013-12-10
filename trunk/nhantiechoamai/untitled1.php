<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>www.bogiaso.com - Chèn Googel Maps vào website</title>
<!--    Chuỗi khai báo lấy tham số của google maps   -->
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&language=vi"></script>
<script type="text/javascript">
var map;
function initialize() {
      var myLatlng = new google.maps.LatLng(10.791811200109255, 106.69101119041443);
      var myOptions = {
    zoom: 16,
    center: myLatlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
}
map = new google.maps.Map(document.getElementById("div_id"), myOptions);
	// Biến text chứa nội dung sẽ được hiển thị
	//var text = "<b style='color:#00F' " + "style='text-align:center'>Nhà của mình nè!<br />" + "<img src='citihouse-logo.jpg'  /></b>";
	var infowindow = new google.maps.InfoWindow({
		//content: text,
		size: new google.maps.Size(100,50),
		position: myLatlng
	});
	infowindow.open(map);    
	var marker = new google.maps.Marker({
		position: myLatlng, 
		map: map,
		title:"Trường ĐH GTVT TP.HCM!"
	});
}
</script>
</head>
<body onLoad="initialize()">
    <div id="div_id" style="height:500px; width:600px"></div>
</body>
</html>