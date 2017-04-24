<?php
session_start();
?>
<html>
<head></head>
<body>
<?php
$name=$_REQUEST["user"];
$pass=$_REQUEST["pass"];

if(isset($_SESSION["auth"]) && $_SESSION["auth"]){
?>
You have already signed in, go to your <a href="home.php">home</a>
<?php
}	
elseif((strlen($name)>0)&&(strlen($pass)>0)){
	if((strcmp($name,"ali")==0) && (strcmp($pass="123")==0)){
		echo "correct pass";
		$_SESSION["auth"] = True;
		header("Location: home.php");
	}
	else{
		echo "Incorrect pass";		
	}
}
else{
?>
<form method="GET" action="login.php">
Username: <input type="text" name="user" />
Password: <input type="password" name="pass" />
<input type="submit" value="Login" />
</form>
<?php } ?>
</body>

