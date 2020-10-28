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
//login

if(isset($_POST['login'])){
    $username = mysqli_real_escape_string($db, $_POST['username']);
    $password  = mysqli_real_escape_string($db,$_POST['password']);

    if(empty($username)){
        array_push($errors, "username is required");
    }
    if(empty($password)){
        array_push($errors,"password is required");
    }
    if(count($errors) == 0){
        $password = md5($password);
        $query = "SELECT * FROM users WHERE username = '$username' AND password = '$password' ";
        $results = mysqli_query($db, $query);
        if(mysqli_num_rows($results) == 1){
            $_SESSION['username'] = $username ;
            $_SESSION['success'] = "you are logged in";
         //  header('location:user.html');
        }else{
            array_push($errors, "wrong username/password combination");
        }
    }
    // log user out if logout button clicked
if (isset($_GET['logout'])) {
    session_destroy();
    unset($_SESSION['user']);
    header("location: login.php");
}
}

?>