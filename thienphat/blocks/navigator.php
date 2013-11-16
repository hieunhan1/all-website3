<?php
$navigator = '<div style="clear:both; height:35px; line-height:35px; margin-bottom:20px; padding-right:30px; border-bottom:solid 1px #DFDDDE">'.$tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title']);
$navigator .= '<div id="support">Email hỗ trợ: <span style="color:#1bb16b; font-weight:bold; padding-right:30px">'.$row_config['email'].'</span>
Hotline: <span style="color:#ed3237; font-weight:bold">'.$row_config['tel'].'</span></div> </div>';