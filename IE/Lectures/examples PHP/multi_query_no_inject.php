<html>
<head></head>
<body>
<?php

$user_id[1] = $_REQUEST["id1"];
$user_id[2] = $_REQUEST["id2"];

if(!empty($user_id)){
	$db = mysqli_connect("127.0.0.1", "root", "12345678", "injection") or die(mysqli_connect_error());

	$stmt = mysqli_prepare($db, "SELECT id, pass, name, balance FROM account WHERE id=?");
	for($i=1; $i <= 2; $i++){
		mysqli_stmt_bind_param($stmt, "i", $user_id[$i]);
		mysqli_stmt_execute($stmt);
		mysqli_stmt_store_result($stmt);
		mysqli_stmt_bind_result($stmt, $ids, $passs, $names, $balances);
		echo "# of rows in query result = ". mysqli_stmt_num_rows($stmt) ."<br />";
		while (mysqli_stmt_fetch($stmt)) {
			printf("ID: %s,  Password: %s,  Name: %s, Balance: %s<br />", $ids, $passs, $names, $balances);
		}	 
	}

	mysqli_close($db);
}
else{
	echo "You should provide at least user ID";
}

?>
</body>
</html>
