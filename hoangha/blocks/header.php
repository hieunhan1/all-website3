<div id="header">
    <div id="logo"><a href=""><img src="images/logo.png" alt="" /></a></div>
    <div id="lang">
        <a href="vi/">Tiếng Việt</a><img src="images/vi.gif" alt="Tiếng Việt" />
        <a href="en/">English</a><img src="images/en.gif" alt="English" />
        <a href="cn/">China</a><img src="images/cn.gif" alt="China" />
        <a href="jp/">Japan</a><img src="images/jp.gif" alt="Japan" />
    </div>
    <div id="search">
        <div id="txtsearch"><input type="text" name="txtsearch" id="key_search" /></div>
        <div id="btnsearch"><button name="btnsearch" onClick="SearchGoogle();">&nbsp;</button></div>
    </div>
</div>

<script type="text/javascript">
function SearchGoogle(){
	var key = document.getElementById("key_search").value;
	var site = document.domain;
	var qs = key + "+site:" + site;
	var url = "http://www.google.com.vn/#sclient=psy-ab&hl=vi&site=&source=hp&q=" + qs + "&pbx=1&oq=" + qs + "&aq=f&aqi=&aql=1&gs_sm=e";
	window.open(url, "_blank");
	return false;
}
$(document).ready(function() {
	$("#key_search").keydown(function(e){
		if(e.keyCode==13) SearchGoogle();
	});
});
</script>