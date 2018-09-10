<?php
if(isset($_GET['c'])){
	$className = $_GET['c'];
}else{
	$className = 'admin';
}

include "../controller/admin/".$className.".php";

if(isset($_GET['m'])){
	$method = $_GET['m'];
}else{
	$method = 'index';
}

$page = new $className();
$page->$method();
