<?php
session_start();

$dbhost = "localhost";
$dbuser = "root";
$dbpass = "";$dbname = "CBR_db";
$website_name = "CBR_rep";
$website_name_admin ="school2/p4/module-4-1-crud-wdv-marwill206";
$con = new mysqli($dbhost, $dbuser, $dbpass, $dbname);

if ($con -> connect_errno) {
    echo "Failed to connect to MySQL: " . $con -> connect_error;
    exit();
}

define("BASEURL","http://localhost/$website_name/");
define("BASEURL_CMS","http://localhost/$website_name_admin/admin/");

function prettyDump ( $var ) {
    echo "<pre>";
    var_dump($var);
    echo "</pre>";
}



