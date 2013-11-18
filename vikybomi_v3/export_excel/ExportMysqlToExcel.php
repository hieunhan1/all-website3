<?
// load library
require 'php-excel.class.php';
//Ket noi CSDL
require '../config.php';
 
//lay du lieu tu bang "shop_topic"
/*
$sql = "
SELECT `order`.name,adress,tel,email,total,`order`.date_create 
FROM `order`,order_detail,product 
WHERE `order`.status=1 AND `order`.id=order_id AND product .id=product_id
ORDER BY `order`.date_create DESC
";
*/

$sql = "SELECT name,adress,tel,email,total,date_create FROM `order` WHERE `order`.status=1 ";
$result = mysql_query($sql);
 
//Khai bao bien mang, gan tieu de
$data = array(array('Họ tên', 'Địa chỉ','Điện thoại','Email','Tổng tiền','Ngày ĐH')); //Them tiep neu muon lay nhieu cot hon nua
 
    while ( $row = mysql_fetch_array( $result ) )
    {
        //lay gia tri tu csdl gan cho mang
        $data[] = array ($row['name'], $row['adress'], $row['tel'], $row['email'], number_format($row['total']), date('d/m/Y',strtotime($row['date_create']))); //Them tiep neu muon lay nhieu cot hon nua
    }
 
// generate file (constructor parameters are optional)
$xls = new Excel_XML('UTF-8', false, 'Sheet 1');
$xls->addArray($data);
$xls->generateXML('DanhSachKhachHang');
?>