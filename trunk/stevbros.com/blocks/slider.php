<?php
$view_slider = '
<link rel="stylesheet" type="text/css" href="assets/preview.css"/>
<link rel="stylesheet" type="text/css" href="assets/wt-rotator.css"/>
<script type="text/javascript" src="assets/jquery.wt-rotator.min.js"></script>
<script type="text/javascript" src="assets/preview.js"></script>

<div id="slider">
<div class="panel">
	<div class="container">
        <div class="wt-rotator">
            <a href="#"></a>            
            <div class="desc"></div>
            <div class="preloader"></div>
            <div class="c-panel">
                <div class="buttons">
                    <div class="prev-btn"></div>
                    <div class="play-btn"></div>    
                    <div class="next-btn"></div>               
                </div>
                <div class="thumbnails"><ul>';
                $slider = $tc->slider_banner(1);
				while($row_slider = mysql_fetch_array($slider)){
					$view_slider .= '
					<li>
						<a href="'.url_slider_image.$row_slider['url_hinh'].'" title="'.$row_slider["name"].'"></a>
						<a href="'.$row_slider["link"].'" target="_blank"></a> 
						<div style="left:640px; top:0; width:280px; height:310px">  
						   <div class="cap-title">'.$row_slider["name"].'</div>
						   <div class="cap-detail">'.$row_slider["info"].'</div>
						</div>                         
					</li>';
				}
				
                    $view_slider .= '</ul>
                </div>     
            </div>
        </div>	
  </div>
</div>
</div>';