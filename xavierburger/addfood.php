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
if(isset($_POST["update"])){

$id=$_POST["id"];
$name=$_POST["name"];
$code=$_POST["code"];
$image=$_POST["image"];
$unitprice=$_POST["unitprice"];
$quantity=$_POST["quantity"];

$insert="INSERT INTO ordertable(id,name,code,image,unitprice,quantity) VALUES('$id','$name','$code','$image','$unitprice','$quantity')";

 if(mysqli_query($link,$insert)){
 	echo "The food has been saved succesfully to the menu.";
 }
else{
	echo "Error!".mysqli_error($link);
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
        <form method="POST" action="addfood.php">
        <tr>
            <td>id</td>
            <td>
			<input type="text" name="id" id="id" placeholder="id" value ="id"required>
  			</td>
  		</tr>
  		<br>
  		<tr>
            <td>name</td>
            <td>
  			<input type="text" name="name" id="name" placeholder="name" value ="name"required>
  			</td>
  		</tr>
  		<br>
  		<tr>
            <td>code</td>
            <td>
  			<input type="text" name="code" id="code" placeholder="code" value ="code"required>
  			</td>
  		</tr>
  		<br>
  		<tr>
            <td>unitprice</td>
            <td>
			<input type="text" name="unitprice" id="unitprice" placeholder="unitprice" value ="unitprice" required>		
			</td>
		</tr>
		<br>
	    <tr>
            <td>quantity</td>
            <td>
			<input type="text" name="quantity" id="unitprice" placeholder="quantity" value ="quantity" required>	
			</td>
		</tr>
		<br>
		<tr>
            <td>&nbsp;</td>
			<button type="submit" name="update" value="update">update</button>
			</td>
        </tr>

		</form>
	</div>
</body>
</html>