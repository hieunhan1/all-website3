<?php
session_start();
include_once('config.php');
if(@$_SESSION['idUser']){
	
	if(!@$_POST['page']) $page = 1; else $page = $_POST['page'];
	
	/*danh muc*/
    $idMenu = '1';
    $qr = $tc->menu_one_id($idMenu);
    $row_menu = mysql_fetch_array($qr);
	
	/*danh sach bai viet*/
	$from = (($page - 1) * max_news);
	$select = 'id,name,user_create,date_create';
	$table = 'forum_info';
	$where = "`delete`=0 AND status=1 AND menu_id='{$idMenu}'";
	$limit = "LIMIT {$from},".max_news;
	$list = $tc->list_item($select,$table,$where,$limit);
	
	if(preg_match("/,1,/", $_SESSION['idGroup'])) $create_tb = '<span class="create create_'.$row_menu['id'].'" name="'.$row_menu['name'].'" style="float:right">Tạo chủ đề</span>';
    ?>
    <div style="clear:both; height:40px"></div>
    <div class="title"><?php echo $row_menu['name'].$create_tb;?></div>
    <div id="dmid_<?php echo $row_menu['id'];?>">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
        <tr bgcolor="#EEEEEE">
            <th width="75">&nbsp;</th>
            <th align="left">Chủ đề / người đăng</th>
            <th width="250" style="border-left:solid 2px #FFF; border-right:solid 2px #FFF">Người mới cập nhật</th>
            <th width="120">Trả lời</th>
        </tr>
        <?php
		$i = 0;
        while($row = mysql_fetch_array($list)){
			$i++;
			if($i<4 && $page==1) $strong = ' style="font-weight:bold"'; else $strong = '';
			
			/*danh sach tra loi comment*/
			$qr2 = $tc->forum_info_comment_select($row['id']);
			$total = mysql_num_rows($qr2);
			if($total>0){
				$row2 = mysql_fetch_array($qr2);
				$user_capnhat = date('d-m-Y H:i', strtotime($row2['date_create'])).'<br />bởi '.$row2['user_create'];
			}else $user_capnhat = date('d-m-Y H:i', strtotime($row['date_create'])).'<br />bởi '.$row['user_create'];
			
			echo '<tr><td><img src="images/icon-mail.gif" alt="mail" /></td>
			<td><a href="javascript:void();" '.$strong.' class="id_info id_info_'.$row['id'].'" name="'.$row_menu['name'].' -|- '.$idMenu.'">'.$row['name'].'</a><br />'.$row['user_create'].'</td>
			<td align="center">'.$user_capnhat.'</td>
			<td style="text-align:center; color:#ED1E28">'.$total.'</td></tr>';	
		}
		?>
    </table></div>
    <?php echo '<div class="phantrang">'.$tc->phantrang($page,max_news,'id',$table,$where,$row_menu['id']).'</div>';?>
    
    <!--danh muc rieng-->
    <?php
	/*danh muc*/
    $idMenu = $_SESSION['idGroup'];
    $qr = $tc->menu_one_id($idMenu);
	$menu = explode(',',$idMenu);
	unset($menu[0]);
	unset($menu[count($menu)]);
	if($menu[1]=='1'){
		unset($menu[1]);
		$j=1;
	}else $j=0;
	
    while($row_menu = mysql_fetch_array($qr)){
		/*danh sach bai viet*/
		$j++;
		$idMenu = $menu[$j];
		$from = (($page - 1) * max_news);
		$select = 'id,name,user_create,date_create';
		$table = 'forum_info';
		$where = "`delete`=0 AND status=1 AND menu_id='{$idMenu}'";
		$limit = "LIMIT {$from},".max_news;
		$list = $tc->list_item($select,$table,$where,$limit);
    ?>
        <div style="clear:both; height:40px"></div>
        <div class="title"><?php echo $row_menu['name'];?> &nbsp; <span class="create create_<?php echo $row_menu['id'];?>" name="<?php echo $row_menu['name'];?>" style="float:right">Tạo chủ đề</span></div>
    	<div id="dmid_<?php echo $row_menu['id'];?>">
        <table width="100%" border="0" cellpadding="0" cellspacing="0" class="table">
            <tr bgcolor="#EEEEEE">
                <th width="75">&nbsp;</th>
                <th align="left">Chủ đề / người đăng</th>
                <th width="250" style="border-left:solid 2px #FFF; border-right:solid 2px #FFF">Người mới cập nhật</th>
                <th width="120">Trả lời</th>
            </tr>
            <?php
            $i = 0;
            while($row = mysql_fetch_array($list)){
                $i++;
                if($i<4 && $page==1) $strong = ' style="font-weight:bold"'; else $strong = '';
                
                /*danh sach tra loi comment*/
                $qr2 = $tc->forum_info_comment_select($row['id']);
                $total = mysql_num_rows($qr2);
                if($total>0){
                    $row2 = mysql_fetch_array($qr2);
                    $user_capnhat = date('d-m-Y H:i', strtotime($row2['date_create'])).'<br />bởi '.$row2['user_create'];
                }else $user_capnhat = date('d-m-Y H:i', strtotime($row['date_create'])).'<br />bởi '.$row['user_create'];
                
                echo '<tr><td><img src="images/icon-mail.gif" alt="mail" /></td>
                <td><a href="javascript:void();" '.$strong.' class="id_info id_info_'.$row['id'].'" name="'.$row_menu['name'].' -|- '.$idMenu.'">'.$row['name'].'</a><br />'.$row['user_create'].'</td>
                <td align="center">'.$user_capnhat.'</td>
                <td style="text-align:center; color:#ED1E28">'.$total.'</td></tr>';	
            }
            ?>
        </table></div>
<?php
		/*phan trang*/
		echo '<div class="phantrang">'.$tc->phantrang($page,max_news,'id',$table,$where,$row_menu['id']).'</div>';
	}
} ?>