<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>

<pre>
<script>
function loadnhac(obj) {
	var flash;
	var media=document.getElementById('media');
	var browser=navigator.appName;
	if(browser=='Microsoft Internet Explorer') {
		flash = '<object classid="clsid:22D6F312-B0F6-11D0-94AB-0080C74C7E95">';//kiem tra trinh duyet
		flash += '<param name="src" value="' + obj+ '">';
		flash += '<param name="autoStart" value="True"></object>';
		media.innerHTML = flash;
	} else {
		flash = '<embed type="video/x-ms-wmv" heigth="300px" width="230px" wmode="tranparent" src="' +obj + '"></embed>';
		media.innerHTML = flash;
	}
}
</script>

<div id="media">

</div>

<a onclick="loadnhac('public/musics.mp3')">bai 1</a>

<a onclick="loadnhac('b.mp3')">bai 2</a>

truyen tham so

</pre>


</body>
</html>