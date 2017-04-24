<html>
<head></head>
<body>
<?php
$user_id = $_REQUEST["id"];
$password = $_REQUEST["pass"];

if(!empty($user_id)){
	$db = mysqli_connect("127.0.0.1", "root", "12345678", "injection") or die(mysqli_connect_error());

	$stmt="";
	if(empty($password)){
		$stmt = mysqli_prepare($db, "SELECT id, pass, name, balance FROM account WHERE id=?");
		if(!mysqli_stmt_bind_param($stmt, "i", $user_id)){
			printf("Error = %s\n", mysqli_error($db));
			exit();
		}
	}
	else{
		$stmt = mysqli_prepare($db, "SELECT id, pass, name, balance FROM account WHERE id=? and pass=?");
		if(!mysqli_stmt_bind_param($stmt, "is", $user_id, $password)){
			printf("Error = %s\n", mysqli_error($db));
			exit();
		}
	}

	mysqli_stmt_execute($stmt);
	mysqli_stmt_store_result($stmt);
	mysqli_stmt_bind_result($stmt, $ids, $passs, $names, $balances);
	echo "# of rows in query result = ". mysqli_stmt_num_rows($stmt) ."<br />";
	while (mysqli_stmt_fetch($stmt)) {
		printf("ID: %s,  Password: %s,  Name: %s, Balance: %s <br />", $ids, $passs, $names, $balances);
	}	 

	mysqli_close($db);
}
else{
	echo "You should provide at least user ID";
}

?>
</body>
</html>
