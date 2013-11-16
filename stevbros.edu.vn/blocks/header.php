<div id="header">
    <div id="item1"><a href="http://<?php echo $domain; ?>" title="Stevbros Project Management Training - PMI R.E.P 3807 - Stevbros Study Abroad Consulting"><img src="images/logo_stevbros.png" alt="Stevbros Project Management Training - PMI R.E.P 3807 - Stevbros Study Abroad Consulting" /></a></div>
    <div id="item2">
        <div id="top">
            <?php
			$view_menu = '<ul id="nav2">';
			$m_top = $tc->menu(0,1);
			while($row = mysql_fetch_array($m_top)){
				$view_menu .= '<li><a href="'.$row['url'].'"  title="'.$row['title'].'">'.$row['name'].'</a>';
				$view_menu .= $tc->getSubmenu($row['id'],1);
				$view_menu .= '</li>';
			}
			$view_menu .= '</ul>';
			echo $view_menu;
			?>
        </div>
        <div id="lang">
            <a href="http://www.stevbros.com"><img src="images/en.jpg" alt="english" /></a>
            <a href="http://www.stevbros.edu.vn"><img src="images/vi.jpg" alt="Việt Nam" /></a>
        </div>
    </div>
    <div id="item3"><a href="http://www.pmi.org" title="PMI - the World’s Leading Professional Association for Project Management" target="_blank"><img src="images/logo_pmi.png" alt="" /></a></div>
</div>