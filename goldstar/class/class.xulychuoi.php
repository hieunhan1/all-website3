<?php
class xulychuoi{
	/*xóa bỏ thẻ html*/
	function remove_tag_html($string){
		return strip_tags($string, "");
	}
	/*Tự động gắn link*/
	function auto_request_link($string){
		$pattern =  "@\b(https?://)?(([0-9a-zA-Z_!~*'().&=+$%-]+:)?[0-9a-zA-Z_!~*'().&=+$%-]+\@)?(([0-9]{1,3}\.){3}[0-9]{1,3}|([0-9a-zA-Z_!~*'()-]+\.)*([0-9a-zA-Z][0-9a-zA-Z-]{0,61})?[0-9a-zA-Z]\.[a-zA-Z]{2,6})(:[0-9]{1,4})?((/[0-9a-zA-Z_!~*'().;?:\@&=+$,%#-]+)*/?)@";
		$link = preg_replace($pattern, '<a href="\0" target="_blank">\0</a>', $string);
		if($this->check_string('http:',$link)==true) return $link;
		else{
			$link = str_replace('href="','href="http://',$link);
			return $link;
		}
	}
	/*Xóa bỏ URL*/
	function remove_link($string){
		return preg_replace('/\b(https?|ftp|file):\/\/[-A-Z0-9+&@#\/%?=~_|$!:,.;]*[A-Z0-9+&@#\/%=~_|$]/i', '', $string);
	}
	/*Kiểm tra một chuỗi nhỏ nằm trong một chuỗi lớn*/
	function contains($str, $content, $ignorecase=true){ 
		if ($ignorecase){
			$str = strtolower($str);
			$content = strtolower($content);
		}
		return strpos($content,$str) ? true : false;
	}
	/* chuyen doi ngay gio */
	function wall_datetime($datetime){
		$m = explode(' ',$datetime);
		$date = explode('-',$m[0]); $date = $date[2].' tháng '.$date[1].' | ';
		$time = date('H:i',strtotime($m[1]));
		return $date.$time;
	}
	/*xu ly thong tin hinh anh*/
	function xulyhinhanh_padding($file){
		$size_info = getimagesize($file);
		$width = $size_info[0];
		$height = $size_info[1];
		if($width>$height && $width>=700){
			$padding_h = ((500-$height)/2);
			$padding = "padding:{$padding_h}px 0";
		}
		elseif($width<$height && $height>=500){
			$padding_w = ((700-$width)/2);
			$padding = "padding:0 {$padding_w}px";
		}
		else{
			$padding_w = ((700-$width)/2);
			$padding_h = ((500-$height)/2);
			$padding = "padding:{$padding_h}px {$padding_w}px";
		}
		return $padding;
	}
	/*kiem tra ton tai 1 chuỗi trong chuỗi lớn*/
	function check_string($chuoi,$chuoi_lon){
		if(preg_match("/{$chuoi}/i",$chuoi_lon)) return true;
		else return false;
	}
	function change_alias($alias){
		if(!$alias) return false;
		$str = $alias;
		$unicode = array(
			'a'=>'á|à|ả|ã|ạ|ă|ắ|ằ|ẳ|ẵ|ặ|â|ấ|ầ|ẩ|ẫ|ậ',
			'A'=>'Á|À|Ả|Ã|Ạ|Ă|Ắ|Ằ|Ẳ|Ẵ|Ặ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
			'd'=>'đ',
			'D'=>'Đ',
			'e'=>'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ',
			'E'=>'É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
			'i'=>'í|ì|ỉ|ĩ|ị',	  
			'I'=>'Í|Ì|Ỉ|Ĩ|Ị',
			'o'=>'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ',
			'O'=>'Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
			'u'=>'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự',
			'U'=>'Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
			'y'=>'ý|ỳ|ỷ|ỹ|ỵ',
			'Y'=>'Ý|Ỳ|Ỷ|Ỹ|Ỵ',
			'' =>"`|~|!|@|#|$|%|^|&|*|(|)|-|_|+|=|\|[|]|{|}|:|;|\"|'|,|.|/|<|>|?|“|”| ",
		);
		foreach($unicode as $khongdau=>$codau) {
			$arr=explode("|",$codau);
			$str = str_replace($arr,$khongdau,$str);
			$str = str_replace('|','',$str);
			$str = str_replace('/','',$str);
		}
		return strtolower($str);
	}
}