<?php
if(!@$_GET['page']) $page = 1; else $page = $_GET['page'];
$idMenu = $_GET['id'];
$qr = $tc->menu_one_id($idMenu);
$row_menu = mysql_fetch_array($qr);

if(@$_GET['create']) include_once('blocks/create.php');

/*danh sach bai viet*/
$from = (($page - 1) * max_news);
$select = 'id,name,user_create,date_create';
$table = 'forum_info';
$where = "`delete`=0 AND status=1 AND menu_id='{$idMenu}'";
$limit = "LIMIT {$from},".max_news;
$list = $tc->list_item($select,$table,$where,$limit);

if(preg_match("/,".$row_menu['id'].",/", $_SESSION['idGroup'])) {
$create_tb = '<span class="create" style="float:right"><a href="?type=catalog&id='.$idMenu.'&create=1" style="color:#FFF">Tạo chủ đề</a></span>';
?>

<div style="clear:both; height:40px"></div>
<div class="title"><?php echo $row_menu['name'].$create_tb;?></div>
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
        <td><a href="?type=detail&id='.$row['id'].'" '.$strong.'>'.$row['name'].'</a><br />'.$row['user_create'].'</td>
        <td align="center">'.$user_capnhat.'</td>
        <td style="text-align:center; color:#ED1E28">'.$total.'</td></tr>';	
    }
    ?>
</table>
<?php echo '<div class="phantrang">'.$tc->phantrang($page,max_news,'id',$table,$where,$row_menu['id']).'</div>';
}else{
	echo '<p style="color:#F00">Bạn không được xem mục này</p>';
}