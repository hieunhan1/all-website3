<?php
session_start();
include_once('config.php');

if($_POST['login']=='login'){
	$user = trim($_POST['username']);
	$pass = $_POST['password'];
	if(strlen($user)<4 || strlen($pass)<6){ echo 'Username và Password không hợp lệ'; return false; }
	else{
		$qr = $tc->KiemTraLogin($user,$pass);
		if($qr==false){ echo 'Username hoặc Password không đúng'; return false; }
		else{ echo 1; return true; }
	}
}
if($_POST['logout_forum']=='logout_forum'){
	$tc->logout();
	return true;
}

if(@$_SESSION['idUser']){
	if($_POST['doimatkhau']=='doimatkhau'){
		$name = trim($_POST['name']);
		$pass_cu = $_POST['pass_cu'];
		$pass_moi1 = $_POST['pass_moi1'];
		$pass_moi2 = $_POST['pass_moi2'];
		$result = $tc->DoiMatKhau($name,$pass_cu,$pass_moi1,$pass_moi2);
		if($result==true){
			$tc->logout();
			echo $result;
			return true;
		}else{
			echo $result;
			return true;
		}
	}
	
	if($_POST['forum_info']=='forum_info'){
		$name = trim($_POST['name']);
		$content = $_POST['content'];
		$menu_id = trim($_POST['menu_id']);
		
		if(strlen($name)>5 && strlen($content)>30 && $menu_id!=''){
			$tc->forum_info_insert($name,$content,$menu_id);
			return true;
		}else{
			echo 0;
			return false;
		}
	}
	
	if($_POST['forum_info_cm']=='forum_info_cm'){
		$content = $_POST['content'];
		$id = trim($_POST['id']);
		if($_SESSION['case_content_cm']==$content) return false;
		
		if(strlen($content)>30 && $id!=''){
			$_SESSION['case_content_cm'] = $content;
			$tc->forum_info_insert_cm($content,$id);
			echo '<tr>
				<td width="220" valign="top" class="detail_left" style="background-color:#F2F2F2; border-bottom:solid 1px #CFCFCF">
					<div class="img"><img src="images/avarta.gif" alt="avarta" /></div>
					<div class="info"><strong>Tên: '.$_SESSION['name'].'</strong></div>
				</td>
				<td valign="top" class="detail_right" style="border-bottom:solid 1px #CFCFCF">
					<div class="date">Ngày đăng: '.date('d-m-Y H:i').'</div><div style="clear:both; height:10px"></div>
					<div class="viewpost">'.$content.'</div>
				</td>
			</tr>';
			return true;
		}else{
			echo 0;
			return false;
		}
	}
	
	if($_POST['phantrang']=='phantrang'){
		$page = $_POST['page'];
		$idMenu = $_POST['idMenu'];
		$qr = $tc->menu_one_id_2($idMenu);
		$row_menu = mysql_fetch_array($qr);
		
		/*danh sach bai viet*/
		$from = (($page - 1) * max_news);
		$select = 'id,name,user_create,date_create';
		$table = 'forum_info';
		$where = "`delete`=0 AND status=1 AND menu_id='{$idMenu}'";
		$limit = "LIMIT {$from},".max_news;
		$list = $tc->list_item($select,$table,$where,$limit);
		?>
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
		</table><?
	}
}

mysql_close();
return true;