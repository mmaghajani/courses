<!DOCTYPE html>
<html>
<head>
</head>
<body>
<?php
	if(isset($_COOKIE["username"])){
		echo "I know you ". $_COOKIE["username"] ."!, You have registered ". $_COOKIE["regtime"] . "<br />";
		echo "
			<form method='get' action='cookie.php'>
				<input type='submit' name='unregister' value='Unregister' />
			</form>
			";
	}
	else{
		echo"
		<form method='get' action='cookie.php'>
		Name: <input type='txt' name='name' />
		<input type='submit' value='Register' />
		</form>
		";
	}
?>
</body>
</html>

