<?php
$skype = '<script type="text/javascript" src="http://cdn.dev.skype.com/uri/skype-uri.js"></script>
<div id="SkypeButton_Dropdown_stevbros_1">
  <script type="text/javascript">
    Skype.ui({
      "name": "dropdown",
      "element": "SkypeButton_Dropdown_stevbros_1",
      "participants": ["stevbros"],
      "imageSize": 32
    });
  </script>
</div>';
$view_post .= "<div id='list_item'>".$tc->navigator($row_menu_one['url'],$row_menu_one['name'],$row_menu_one['title'])."
	<div id='contact'>".$row_config['contact'].$skype."</div>
	<img src='images/map.jpg' alt='map' style='float:right; width:531px; padding-top:150px' />
	<div id='contact_form'>
    <table width='400' border='0' cellspacing='8' cellpadding='5' align='left'>
      <tr>
        <td>Tên: <span style='color:#FF0000'>*</span></td>
      </tr>
      <tr>
        <td><input type='text' name='name_contact' maxlength='50' class='txt' /></td>
      </tr>
      <tr>
        <td>Email: <span style='color:#FF0000'>*</span></td>
      </tr>
      <tr>
        <td><input type='text' name='email_contact' maxlength='50' class='txt' /></td>
      </tr>
      <tr>
        <td>Lời nhắn: <span style='color:#FF0000'>*</span></td>
      </tr>
      <tr>
        <td><textarea name='content_contact' class='textarea'></textarea></td>
      </tr>
      <tr>
        <td><input type='submit' name='submit_contact' value='GỬI' class='btn' /></td>
      </tr>
    </table>
	</div>
  <div style='clear:both; height:80px;'></div>
</div>";