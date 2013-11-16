<?php 
# this is the file redir.php, to gzip javascript and css

# set the request file name
$file=str_replace(chr(0x0),"",$_REQUEST['file']);
$allowedfiles = array('js','gif','png','jpg','css','txt','swf');
if (!in_array(str_replace(chr(0x2E),"",substr(chr(0x2E).$file,-3)),$allowedfiles)){ exit ("Hacking attempt!"); }

# Set Expires, cache the file on the browse
header("Expires:".gmdate("D, d M Y H:i:s", time()+15360000)."GMT");
header("Cache-Control: max-age=315360000");

# set the last modified time
$mtime = filemtime($file);
$gmt_mtime = gmdate('D, d M Y H:i:s', $mtime) . ' GMT';
header("Last-Modified:" . $gmt_mtime);

# output a mediatype header
switch ($_REQUEST['type']){
  case 'css':
    header("Content-type: text/css");
    break;
  case 'js' :
    header("Content-type: text/javascript");
      break;
  default:
    header("Content-type: text/plain");
}

# echo the file's contents
echo implode('', file($file));

if(extension_loaded('zlib')){
  ob_end_flush();
  # set header the content's length;
  # header("Content-Length: ".ob_get_length()); # (It doesn't work? )
  ob_end_flush();
}
?>