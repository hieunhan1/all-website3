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
		echo '<div id="slogan"><embed src="images/slogan-'.$swf.'.swf" quality="high" type="application/x-shockwave-flash" wmode="transparent" width="650" height="60" allowScriptAccess="always"></embed></div>
';
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