<div id="right">
    <div id="tin_noibat">
        <div id="title_noibat">Tin nổi bật</div>
        <?php
        $qr = $tc->tinnoibat();
        while($row = mysql_fetch_array($qr)){
			if($row['other2'] == 1) $new = '<img src="images/new.gif" alt="new" />'; else $new = ''; 
            echo '<li><a href="'.$tc->link_detail($row['menu_id']).$row['name_rewrite'].'.html">'.$row['name'].$new.'</a></li>';
        }
        ?>
    </div>
    <div id="register">
        <div id="title_register">Đăng ký online</div>
        <?php if($_SESSION['checks_register']==0 && !@$_SESSION['user_id']){ ?>
        <div id="ajax_register" style="display:none; padding:30px 20px">Đang xử lý...</div>
        <div id="form_register">
        <table width="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
                <td>Họ tên</td>
                <td><input type="text" name="hoten" class="txt_register" /></td>
            </tr>
            <tr>
                <td>Số điện thoại</td>
                <td><input type="text" name="phone" class="txt_register" /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" class="txt_register" /></td>
            </tr>
            <tr>
                <td>Nhu cầu học</td>
                <td><select name="nhucauhoc" class="sel_register">
                <?php
                $qr = $tc->home_chuongtrinh($id_chuongtrinh);
                while($row = mysql_fetch_array($qr)){
                    echo '<option value="'.$row['id'].'">'.$row['name'].'</option>';
                }
                ?>
                </select></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><input type="button" name="btnRegister" value="Đăng ký" class="btn_register" /></td>
            </tr>
        </table>
        </div>
        <?php } else echo '<div style="padding:30px 20px">Bạn đã đăng ký học, vui lòng đợi chúng tôi liên hệ.</div>'; ?>
    </div>
    <?php
    if(@$dt && $type==2){
        $qr = $tc->other($idMenu);
        while($row = mysql_fetch_array($qr)){
            $str_other .= '<li class="li_1"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
        }
        echo '<div id="other"><div id="title_other">Các tin khác</div>
        '.$str_other.'</div>';
    }elseif(@$dt && $type==3){
        $qr = $tc->other($idMenu);
        while($row = mysql_fetch_array($qr)){
            $str_other .= '<li class="li_2"><a href="'.$row_menu_one['url'].$row['name_rewrite'].'.html">'.$row['name'].'</a></li>';
        }
        echo '<div id="other">'.$str_other.'</div>';
    }
    ?>
</div>