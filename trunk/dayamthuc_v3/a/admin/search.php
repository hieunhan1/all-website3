<?php
	/*search*/
	if(isset($_GET['btnSearch'])){
		if($_GET['txt']!='' && $_GET['txt']!='Mô tả') $str_search .= " AND name LIKE '%{$_GET['txt']}%' ";
		if($_GET['dm']!='0' && $_GET['dm']!='') $str_search .= " AND menu_id LIKE '%,{$_GET['dm']},%' ";
	}else{
		$str_search = '';
	}
?>
<form action="" method="get" name="search">
<div id="search">
	<input type="hidden" name="p" value="<?php echo $table; ?>" />
    <input type="text" name="txt" value="<?php if(!isset($_GET['txt'])) echo 'Mô tả'; else echo $_GET['txt']; ?>" class="txt" onclick="if(value=='Mô tả') value=''" />
	<?php
    /*$qr = mysql_query("SELECT `id`,`name` FROM `web_menu` WHERE `delete`=0 AND (type_id=1 OR type_id=2) ");
    while($row = mysql_fetch_array($qr)){
        //echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
    }*/
    
    //parent_id
    $name_default = array('Chọn',$id);
    $arr = $qt->danhmuc_menu_select(0,'',$name_default);
    $properties = $_GET['dm']; //default check
    $views = array('','dm','select'); //label id&name class
    $form->getProperties('5',$arr,$properties,$views);
    echo $form->DisplayProperties();
    ?>
    <input type="submit" name="btnSearch" value="Tìm kiếm" class="btn" />
</div>
</form>