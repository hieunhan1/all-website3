<?php
$max_results = 30;
define(DIR, '../../class/');

include_once(DIR.'class.quantri.php');
$qt = new quantri();

include_once(DIR.'class.form.php');
$form = new form();

include_once(DIR.'class.sql.php');
$sql = new sql();

$error_sql = "<p class='error'>Không truy vấn được.</p>";
$required = "<span style='color:red'>*</span>";