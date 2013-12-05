<?php if($_COOKIE['tinhthanh']=='Đà Nẵng'){?>
    <div style="float:left">Cơ sở:&nbsp;</div>
	<div id="change_tinhthanh" title="Thay đổi cơ sở"><?php echo $_COOKIE['tinhthanh'];?></div>
    <div style="float:left">Điện thoại: <b>05113.634.879</b> &nbsp; | &nbsp; </div>
    <div style="float:left">Hotline: <b>0905.362.809</b> &nbsp; | &nbsp; </div>
    <div style="float:left">Tư vấn trực tuyến: &nbsp; </div>
	<div style="float:left"><a href="ymsgr:sendIM?consultant_netspace4"><img align='left' src='http://opi.yahoo.com/online?u=consultant_netspace4&m=g&t=0' border=0> &nbsp;<b>Tư vấn 1</b></a>&nbsp;-&nbsp;</div>
    <div style="float:left"><a href="ymsgr:sendIM?consultant_netspace5"><img align='left' src='http://opi.yahoo.com/online?u=consultant_netspace5&m=g&t=0' border=0> &nbsp;<b>Tư vấn 2</b></a></div>
<?php }elseif($_COOKIE['tinhthanh']=='Cần Thơ'){?>
    <div style="float:left">Cơ sở:&nbsp;</div>
    <div id="change_tinhthanh" title="Thay đổi cơ sở"><?php echo $_COOKIE['tinhthanh'];?></div>
    <div style="float:left">Điện thoại: <b>0710 373 4371</b> &nbsp; | &nbsp; </div>
    <div style="float:left">Hotline: <b>0907.955.666 - 0932.930.993</b> &nbsp; | &nbsp; </div>
    <div style="float:left">Tư vấn trực tuyến: &nbsp; </div>
	<div style="float:left"><a href="ymsgr:sendIM?consultant_netspace6"><img align='left' src='http://opi.yahoo.com/online?u=consultant_netspace6&m=g&t=0' border=0> &nbsp;<b>Tư vấn 1</b></a>&nbsp;-&nbsp;</div>
    <div style="float:left"><a href="ymsgr:sendIM?consultant_netspace7"><img align='left' src='http://opi.yahoo.com/online?u=consultant_netspace7&m=g&t=0' border=0> &nbsp;<b>Tư vấn 2</b></a></div>
<?php }else if($_COOKIE['tinhthanh']=='Tp.HCM'){?>
    <div style="float:left">Cơ sở:&nbsp;</div>
    <div id="change_tinhthanh" title="Thay đổi cơ sở"><?php echo $_COOKIE['tinhthanh'];?></div>
    <div style="float:left">Điện thoại: <b>(08) 6291 2698</b> &nbsp; | &nbsp; </div>
    <div style="float:left">Hotline: <b><?php echo $row_config['tel']?></b> &nbsp; | &nbsp; </div>
    <div style="float:left">Tư vấn trực tuyến: &nbsp; </div>
	
    <div style="float:left"><a href="ymsgr:sendIM?consultant_netspace"><img align='left' src='http://opi.yahoo.com/online?u=consultant_netspace&m=g&t=0' border=0> &nbsp;<b>Tư vấn 1</b></a>&nbsp;-&nbsp;</div>
    <div style="float:left"><a href="ymsgr:sendIM?consultant_netspace2"><img align='left' src='http://opi.yahoo.com/online?u=consultant_netspace2&m=g&t=0' border=0> &nbsp;<b>Tư vấn 2</b></a></div>
<?php }else{?>
    <div style="float:left">Cơ sở:&nbsp;</div>
    <div id="change_tinhthanh" title="Thay đổi cơ sở">Tp.HCM</div>
    <div style="float:left">Điện thoại: <b>(08) 6291 2698</b> &nbsp; | &nbsp; </div>
    <div style="float:left">Hotline: <b>0987 937 938 - 0947 333 488</b> &nbsp; | &nbsp; </div>
    <div style="float:left">Tư vấn trực tuyến: &nbsp; </div>
	<div style="float:left"><a href="ymsgr:sendIM?consultant_netspace3"><img align='left' src='http://opi.yahoo.com/online?u=consultant_netspace3&m=g&t=0' border=0> &nbsp;<b>Tư vấn 1</b></a>&nbsp;-&nbsp;</div>
    <div style="float:left"><a href="ymsgr:sendIM?consultant_netspace"><img align='left' src='http://opi.yahoo.com/online?u=consultant_netspace&m=g&t=0' border=0> &nbsp;<b>Tư vấn 2</b></a>&nbsp;-&nbsp;</div>
    <div style="float:left"><a href="ymsgr:sendIM?consultant_netspace2"><img align='left' src='http://opi.yahoo.com/online?u=consultant_netspace2&m=g&t=0' border=0> &nbsp;<b>Tư vấn 3</b></a></div>
<?php }?>