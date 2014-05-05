<?php
$slider = $tc->slider_banner(5);
echo '<div id="divAdRight" style="display:none; position:absolute; top:0px">';
while($row_slider = mysql_fetch_array($slider)){
	echo '<a href="'.$row_slider['link'].'" title="'.$row_slider['name'].'" target="_blank" style="display:block; margin-bottom:8px; border:solid 1px #bdbdbd"><img src="'.url_slider_image.$row_slider['url_hinh'].'" alt="'.$row_slider['name'].'" width="135" /></a>';
}
echo '</div>';

$slider = $tc->slider_banner(4);
echo '<div id="divAdLeft" style="display:none; position:absolute; top:0px">';
while($row_slider = mysql_fetch_array($slider)){
	echo '<a href="'.$row_slider['link'].'" title="'.$row_slider['name'].'" target="_blank" style="display:block; margin-bottom:8px; border:solid 1px #bdbdbd"><img src="'.url_slider_image.$row_slider['url_hinh'].'" alt="'.$row_slider['name'].'" width="135" /></a>';
}
echo '</div> ';
?>
<script> 
    function FloatTopDiv() 
    { 
        startLX = ((document.body.clientWidth -MainContentW)/2)-LeftBannerW-LeftAdjust , startLY = TopAdjust+80; 
        startRX = ((document.body.clientWidth -MainContentW)/2)+MainContentW+RightAdjust , startRY = TopAdjust+80; 
        var d = document; 
        function ml(id) 
        { 
            var el=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id]; 
            el.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';}; 
            el.x = startRX; 
            el.y = startRY; 
            return el; 
        } 
        function m2(id) 
        { 
            var e2=d.getElementById?d.getElementById(id):d.all?d.all[id]:d.layers[id]; 
            e2.sP=function(x,y){this.style.left=x + 'px';this.style.top=y + 'px';}; 
            e2.x = startLX; 
            e2.y = startLY; 
            return e2; 
        } 
        window.stayTopLeft=function() 
        { 
            if (document.documentElement && document.documentElement.scrollTop) 
                var pY =  document.documentElement.scrollTop; 
            else if (document.body) 
                var pY =  document.body.scrollTop; 
            if (document.body.scrollTop > 30){startLY = 3;startRY = 3;} else {startLY = TopAdjust;startRY = TopAdjust;}; 
            ftlObj.y += (pY+startRY-ftlObj.y)/16; 
            ftlObj.sP(ftlObj.x, ftlObj.y); 
            ftlObj2.y += (pY+startLY-ftlObj2.y)/16; 
            ftlObj2.sP(ftlObj2.x, ftlObj2.y); 
            setTimeout("stayTopLeft()", 1); 
        } 
        ftlObj = ml("divAdRight"); 
        //stayTopLeft(); 
        ftlObj2 = m2("divAdLeft"); 
        stayTopLeft(); 
    } 
    function ShowAdDiv() 
    { 
        var objAdDivRight = document.getElementById("divAdRight"); 
        var objAdDivLeft = document.getElementById("divAdLeft");        
        if (document.body.clientWidth < 1100) 
        { 
            objAdDivRight.style.display = "none"; 
            objAdDivLeft.style.display = "none"; 
        } 
        else 
        { 
            objAdDivRight.style.display = "block"; 
            objAdDivLeft.style.display = "block"; 
            FloatTopDiv(); 
        } 
    }  
</script> 

<script type="text/javascript" language="javascript">
	MainContentW = 970;
	LeftBannerW = 135;
	RightBannerW = 135;
	LeftAdjust = 0;
	RightAdjust = 0;
	TopAdjust = 40;
	ShowAdDiv();
	window.onresize=ShowAdDiv;
</script>