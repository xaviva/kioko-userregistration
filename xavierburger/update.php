<?php
	$servername = "localhost";
	$username = "root";
	$password = "";
	$database = "xavierburgers";

	
	//Create Connection
	$conn = mysqli_connect($servername,$username, $password,$database);

	if(mysqli_connect_error()){

   die("Connection failed: ". mysqli_connect_error());
    }


   
	if(isset($_POST['update'])){

 		$User_Id = $_GET['ID']; 
 		$First_name = $_POST['fname'];
		$Second_name = $_POST['sname'];
		$Email = $_POST['email_address'];
		$PNumber = $_POST['Phone_no'];
		$DOB = $_POST['date_birth'];
		$Gender = $_POST['gender'];
		$Uname = $_POST['uname'];
		$pwd = $_POST['pwd'];

		$query = "update records set first_name ='".$First_name."', second_name='".$Second_name."', email = '".$Email."', phone_number ='".$PNumber."', Date_of_birth = '".$DOB."', gender = '".$Gender."', Username = '".$Uname."', Password ='".$pwd."' where User_ID='".$User_Id."'";


	
		$result =mysqli_query($conn,$query);

		if($result){

		header("location:text.php");

		}else{
		echo 'Please Check Your Query'; 
		}
	}else{

	header("location:text.php");

	}


?>