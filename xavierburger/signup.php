<?php
include('connect.php');
if(isset($_POST['submit'])){
    $id=NULL;
    $username =$_POST['username'];
    $type =$_POST['type'];
    $firstname =$_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email =$_POST['email'];
    $phonenumber =  $_POST['phonenumber'];
    $dateofbirth = $_POST['dateofbirth'];
    $password = $_POST['password'];
    $confirmpassword =$_POST['confirmpassword'];

    if($password != $confirmpassword)
    {
        echo"The two passwords do not match";
        //header('location:signup.php');
    }
    else
    {
        //register the user
       
                $password = md5($password);
                $query = $db->prepare("INSERT INTO `login`(`id`, `type`,`username`, `password`, `firstname`, `lastname`, `email`, `phonenumber`, `dateofbirth` ) VALUES (?,?,?,?,?,?,?,?,?)");
                $query->bind_param("issssssis", $id, $type, $username, $password, $firstname, $lastname, $email,  $phonenumber, $dateofbirth);
                $query->execute();
                $query->close();
                mysqli_query($db, $query);
                header('location:login.php');
      
    }

   
}
?>
<!DOCTYPE html>
    <html>
        <title>XavierBurgers Registration</title>
        <head>
        <link rel = "stylesheet" type = "text/css" href="signupandlogin.css">
        </head>
        <body> 
        <form method="POST" action="signup.php">
            <table>
                <tr>
                    <td>User Type</td>
                    <td><select name="type">
                    <option value="-1">select user type</option>
                    <option value="Admin">Admin</option>
                    <option value="User">User</option>
                    </select></td>
                 </tr>
                 <tr>
                    <td>Username</td>
                    <td><input type="text" name="username" placeholder ="username"required></td>
                </tr>
                <tr>
                    <td>Firstame</td>
                    <td><input type="text" name="firstname" placeholder ="firstname" required></td>
                </tr>
                <tr>
                    <td>Lastname</td>
                    <td><input type="text" name="lastname" placeholder ="lastname"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="email" placeholder ="email"required></td>
                </tr>
                <tr>
                    <td>Phonenumber</td>
                    <td><input type="text" name="phonenumber" placeholder ="phonenumber"></td>
                </tr>
                <tr>
                    <td>Date of Birth</td>
                    <td><input type="date" name="dateofbirth" placeholder ="dateofbirth"></td>
                </tr>
                    <td>Password</td>
                    <td><input type="password" name="password" placeholder="password"required></td>
                 </tr>
                 <tr>
                    <td>ConfirmPassword</td>
                    <td><input type="password" name="confirmpassword" placeholder="confirmpassword"required></td>
                 </tr>
                 <tr>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="submit" value="Register"></td>
                </tr>

                 </table>
         </form>
            <p>
            Already a member? <a href="login.php">Login</a>
            </p>
        </form> 
</body> 
</html>