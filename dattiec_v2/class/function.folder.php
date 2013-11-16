<?php
//Xóa thư mục và các thành phần bên trong
//Xóa các thành phần bên trong nhưng chừa lại thư mục
//Tính tổng dung lượng thư mục
//Định dang khi hiển thị theo KB, MB, GB

class Folder{
#support remove folder
#how to call: Folder::delete_directory($dirname);
static function delete_directory($dirname) {
    if (is_dir($dirname)) $dir_handle = opendir($dirname);
    if (!$dir_handle)  return false;
    while($file = readdir($dir_handle)) {
       if ($file != "." && $file != "..") {
          if (!is_dir($dirname."/".$file))
             unlink($dirname."/".$file);
          else
             self::delete_directory($dirname.'/'.$file);    
       }
    }
    closedir($dir_handle);
    rmdir($dirname);
    return true;
}
 
#support remove sub_folder
#how to call: Folder::delete_sub_directory($dirname);
static function delete_sub_directory($dirname) {
    if (is_dir($dirname)) $dir_handle = opendir($dirname);
    if (!$dir_handle)  return false;
    while($file = readdir($dir_handle)) {
       if ($file != "." && $file != "..") {
          if (!is_dir($dirname."/".$file))
             unlink($dirname."/".$file);
          else
             Folder::delete_directory($dirname.'/'.$file);  
       }
    }
    closedir($dir_handle);
    return true;
}   
  
#how to call: Folder::getDirectorySize($path);
static function getDirectorySize($path)
{
  $totalsize = 0;
  $totalcount = 0;
  $dircount = 0;
  if ($handle = opendir ($path))
  {
    while (false !== ($file = readdir($handle)))
    {
      $nextpath = $path . '/' . $file;
      if ($file != '.' && $file != '..' && !is_link ($nextpath))
      {
        if (is_dir ($nextpath))
        {
          $dircount++;
          $result = self::getDirectorySize($nextpath);
          $totalsize += $result['size'];
          $totalcount += $result['count'];
          $dircount += $result['dircount'];
        }
        elseif (is_file ($nextpath))
        {
          $totalsize += filesize ($nextpath);
          $totalcount++;
        }
      }
    }
  }
  closedir ($handle);
  $total['size'] = $totalsize;
  $total['count'] = $totalcount;
  $total['dircount'] = $dircount;
  return $total;
}
 
#how to call: Folder::sizeFormat($size);
static function sizeFormat($size)
{
    if($size<1024)
    {
        return $size." bytes";
    }
    else if($size<(1024*1024))
    {
        $size = round($size/1024,1);
        return $size." KB";
    }
    else if($size<(1024*1024*1024))
    {
        $size = round($size/(1024*1024),1);
        return $size." MB";
    }
    else
    {
        $size = round($size/(1024*1024*1024),1);
        return $size." GB";
    }
 
}    
 
}//end class Folder?>