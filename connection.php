<?php 

if(session_status() === PHP_SESSION_NONE){
    session_start();
}

$server ='localhost';
$username ='root';
$password ='';
$database ='multi-step';

$connection =mysqli_connect($server, $username, $password, $database);


?>