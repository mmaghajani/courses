<html>
<head></head>
<body>
<?php
$user_id = $_REQUEST["id"];
$password = $_REQUEST["pass"];

if(!empty($user_id)){
	$db = mysqli_connect("127.0.0.1", "root", "12345678", "injection") or die(mysqli_connect_error());

	$query="";

	if(empty($password))
		//Searching just by user ID
		$query = 'SELECT * FROM account WHERE id='.$user_id;
	else
		//Searching by id & pass
		$query = 'SELECT * FROM account WHERE id='.$user_id.' and pass="'.$password.'"';

	//echo $query."<br />";
	
	$result = mysqli_query($db, $query) or die(mysqli_error($db));

	while($row = mysqli_fetch_array($result))
		echo "ID: ", $row["id"], ", Password: ", $row["pass"], ", Name: ", $row["name"], ", Balance: ", $row["balance"], "<br />";

	mysqli_close($db);
}
else{
	echo "You should provide at least user ID";
}

?>
</body>
</html>
