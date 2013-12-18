<div id="container" style="padding:0 15px">
    <div id="menu_top">
        <?php
        $menu = $tc->menu(0,2,$lang);
        while($row = mysql_fetch_array($menu)){
            echo '<a href="'.$row['url'].'">'.$row['name'].'</a>';
        }
        ?>
    </div>
    <div id="header">
        <div id="logo"><a href=""><img src="images/logo.png" alt="Nhà hàng tiệc cưới xe cổ HỒNG CƯỜNG - HONG CUONG CLUB" /></a></div>
        <!--<div id="slogan"><embed src="images/slogan-home.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="800" height="60" allowScriptAccess="always"></embed></div>-->
        <div id="slogan">
        <div class="aleoflash-gif" style="display:none;"><img src="images/slogan-home.gif" border="0" /></div>
        <div class="aleoflash-swf" style="display:block;"><embed src="images/slogan-home.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="800" height="60" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed></div>
        <div class="aleoflash"><a href="http://www.aleosoft.com/flash-intro-banner-maker/index.html">Created by Aleo Flash Banner Maker</a></div>
		<script language="JavaScript">var hasFlash=false;if(window.ActiveXObject){ try { if (new ActiveXObject("ShockwaveFlash.ShockwaveFlash")) hasFlash=true;} catch(e){}} else { if(navigator.plugins["Shockwave Flash"]){hasFlash=true;}}var elems=document.getElementsByTagName("div"); for(var i in elems){if(!hasFlash && elems[i].className=="aleoflash-gif") elems[i].style.display="block"; else if ((!hasFlash && elems[i].className=="aleoflash-swf") || elems[i].className=="aleoflash") elems[i].style.display="none";}</script>
        </div>
    </div>
    <?php
    $i = 0;
    $qr = $tc->menu(0,1,$lang);
    while($row = mysql_fetch_array($qr)){
        if($i!=1) $style = ''; else $style = 'style="margin:0 30px"';
        echo '<div class="box_home" '.$style.'>
            <div class="box_home_img"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" class="box_home_img_bo" /></div>
            <a href="'.$row["url"].'" style="color:'.$array_color[$i].'"><h2>'.$row['name'].'</h2></a>
            <p>'.$row['metaDescription'].'</p>
            <div class="view_more" style="background-color:'.$array_color[$i].'"><a href="'.$row["url"].'">Xem thêm</a></div>
        </div>';
        $i++;
    }
    ?>
    <div style="clear:both; height:70px"></div>
    <div id="footer">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td width="230" valign="top"><p style="font-weight:bold">Kết nối với chúng tôi</p>
                    <p><?php
                    $menu = $tc->menu(0,6,$lang);
                    while($row = mysql_fetch_array($menu)){
                        echo '<a href="'.$row['url'].'" title="'.$row['name'].'"><img src="'.url_catalog_image.$row['url_hinh'].'" alt="'.$row['name'].'" style="margin-right:3px" /></a>';
                    }
                    ?></p>
                </td>
                <td><?php echo $row_config['contact_foo'];?></td>
                <td width="170" valign="top" style="text-align:right; font-weight:bold"><?php echo $row_config['copyright'];?></td>
            </tr>
        </table>
    </div>
</div>