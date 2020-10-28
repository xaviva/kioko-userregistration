<?php
session_start();
$servername ="localhost";
$username ="root";
$password ="";
$database = "xavierburgers";
$errors = array();

//connect to database
$db =mysqli_connect($servername,$username,$password,$database);
if(!$db){
    die("could not connect".mysqli_connect_error());
}
echo "Successsful connection";
echo " ";
