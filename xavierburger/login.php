<?php
require_once('connect.php');
if(isset($_POST['submit']))
{
    $username = $_POST['username'];
    $password = $_POST['password'];
    $stmt = "SELECT * FROM login where username='$username' AND password = '$password'";
    $result = mysqli_query($db, $stmt);
    $row = mysqli_fetch_array($result);
    if($row['username'] == $username && $row['password'] == $password)
    {
       if($row['type'] == 'Admin')
       {
        setcookie('username', $username, time()+60*60+7);
        session_start();
        $_SESSION['username'] = $username;
        header("Location: http:admin.html");
       }
       else
       {
        setcookie('username', $username, time()+60*60+7);
        session_start();
        $_SESSION['username'] = $username;
        header("Location: http:user.html");  
       }
    }
    else
    {
        echo "You have enterred an Incorrect Password";
        $db ->close();
        //header("Location: http:login.php");
    } 
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Xavier Burgers Login Form</title>
	<link rel = "stylesheet" type = "text/css" href="signupandlogin.css">
</head>
<body>
	<form method="POST" action="login.php">
		<table>
			
			<tr>
				<td>Username</td>
				<td><input type="text" name="username" placeholder ="username"required></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password" placeholder="password"required></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="submit" value="login"></td>
			</tr>

		</table>
		<p>
        Not a member? <a href="signup.php">Register here</a>
    </p>
	</form>

</body>
</html>
