<?php
	$register = -1;
	$name = "";
	if(isset($_GET["unregister"])){
		setcookie("username", "", -1);
		setcookie("regtime", "", -1);
		$register = 0;
	}
	else{
		$name = $_GET["name"];
		$expire = time()+30*24*60*60;
		setcookie("username", $name, $expire);
		setcookie("regtime", date("Y/m/d"), $expire);
		$register = 1;
	}
?>
<html>
<head>
</head>
<body>
	<?php
		if($register == 1){
			echo $name."! Thank you <br />";
	?>
		You have registered successfully for one month <br />
		You can check your <a href="register.php">registration</a>
	<?php
		}
		else if($register == 0){
			echo "You have unregistered successfully, Hope to see you again <br />";
			echo "Do you want to <a href='register.php'>register</a> again <br />";
		}
	?>
</body>
</html>

