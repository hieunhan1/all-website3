<div id="container" style="padding:0 90px; background:url(images/bg-menu.png) no-repeat; background-position:0 190px">
    <div id="menu_top">
        <p>Liên hệ trực tiếp: <span><?php echo $row_config['hotline'];?></span></p>
        <p>Chat: <a href="ymsgr:sendIM?tuuyen_hh"><img src="http://opi.yahoo.com/online?u=tuuyen_hh&amp;m=g&amp;t=1"></a></p>
    </div>
    <div id="header">
        <div id="logo"><a href=""><img src="images/logo.png" alt="Nhà hàng tiệc cưới xe cổ HỒNG CƯỜNG - HONG CUONG CLUB" /></a></div>
        <?php
        if(preg_match("/,3,/i", $row_menu_one['position_id'])) $swf = 'nhahang';
		elseif(preg_match("/,4,/i", $row_menu_one['position_id'])) $swf = 'tieccuoi';
		else $swf = 'xeco';
		echo '<div id="slogan">
		<div class="aleoflash-gif" style="display:none;"><img src="images/slogan-'.$swf.'.gif" border="0" /></div>
        <div class="aleoflash-swf" style="display:block;"><embed src="images/slogan-'.$swf.'.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="640" height="60" pluginspage="http://www.macromedia.com/go/getflashplayer" allowScriptAccess="always"></embed></div>
        <div class="aleoflash"><a href="http://www.aleosoft.com/flash-intro-banner-maker/index.html">Created by Aleo Flash Banner Maker</a></div>
		<script language="JavaScript">var hasFlash=false;if(window.ActiveXObject){ try { if (new ActiveXObject("ShockwaveFlash.ShockwaveFlash")) hasFlash=true;} catch(e){}} else { if(navigator.plugins["Shockwave Flash"]){hasFlash=true;}}var elems=document.getElementsByTagName("div"); for(var i in elems){if(!hasFlash && elems[i].className=="aleoflash-gif") elems[i].style.display="block"; else if ((!hasFlash && elems[i].className=="aleoflash-swf") || elems[i].className=="aleoflash") elems[i].style.display="none";}</script>
		</div>';
		
		//echo '<div id="slogan"><embed src="images/slogan-'.$swf.'.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="650" height="60" allowScriptAccess="always"></embed></div>';
		?>
        
    </div>
    
    <?php
    include_once('blocks/menu.php');
	echo $include_detail;
	?>
    
    <div id="run_top" onclick="sroll_top();">[ TOP ]</div>
    <div id="footer" style="border-top:solid 1px #896534">
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