<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Read Excel file</title>
</head>

<body>
<?php
	include "DBcon.php"; //Lớp kết nối DB
	mysql_select_db($database, $connect);
	/*--------------------------------------------
	/* Đọc và hiển thị file Excel
	/* Post by khoinguonit.com
	/*------------------------------------------*/
	$filename="demo.xls";
	require_once 'excel_reader.php'; // Thư viện xử lý
	$data = new Spreadsheet_Excel_Reader($filename,true,"UTF-8"); // Đọc file excel, hỗ trợ Unicode UTF-8
	$rowsnum = $data->rowcount($sheet_index=0); // Số hàng của sheet
	$colsnum =  $data->colcount($sheet_index=0);  //Số cột của sheet
	
	$strHtml .= "<br>Số dòng: " . $rowsnum;
	$strHtml .= "<br>Số cột: "  .$colsnum."<br>" ;
	$strHtml .= "<b>Đọc dữ liệu từ Excel lên </b><br> ";

	$strHtml .= "<table border=1 cellspacing=1 cellpadding=0  style='border-collapse:collapse'>";
	$strHtml .= "<tr bgcolor='#999999'> <td>STT</td>";
	$strHtml .="<td>".$data->val(1,1)."</td> ";
	$strHtml .="<td>".$data->val(1,2)."</td> ";
	$strHtml .="<td>".$data->val(1,3)."</td> ";
	$strHtml .="<td>".$data->val(1,4)."</td> ";
	$strHtml .="<td>Ghi vào DB</td></tr>";
	
	for ($i=2;$i<=$rowsnum;$i++) // Duyệt từng hàng, bắt đầu lấy dữ liệu từ hàng 2
	{
		/*----------------------------------------------
		/* Hiển thị dữ liệu ra bảng
		/*---------------------------------------------*/
		$j=$i-1;
		$strHtml .= "<tr>";
		$strHtml .= 	"<td>" .$j ."</td>";
		$strHtml .= 	"<td>".$data->val($i,1)."</td>";
		$strHtml .= 	"<td>" .$data->val($i,2) ."</td>";
		$strHtml .= 	"<td>".$data->val($i,3)."</td>";
		$strHtml .= 	"<td>".$data->val($i,4) ."</td>";

		/*----------------------------------------------
		/* Lưu dữ liệu vào DB
		/*---------------------------------------------*/
		$sql = "insert into a_test (name, mark, phone, address) values(";
		$sql .= "'".$data->val($i,1)."'";
		$sql .= ",'".$data->val($i,2)."'";
		$sql .= ",'".$data->val($i,3)."'";
		$sql .= ",'".$data->val($i,4)."');";
		$result=mysql_query($sql);
		if($result)
		{
			$strHtml .= "<td>Thành công </td>";
		}
		else $strHtml .= " <td>Không thành công </td></tr>";
	}
	$strHtml .= "</table>";
	echo $strHtml;
?>
</body>
</html>
