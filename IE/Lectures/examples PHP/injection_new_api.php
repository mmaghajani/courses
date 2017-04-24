<html>
<head></head>
<body>
<?php
$user_id1 = $_REQUEST["id1"];
$user_id2 = $_REQUEST["id2"];

if(!empty($user_id1) || !empty($user_id2)){
	$mysqli = mysqli_connect("127.0.0.1", "root", "12345678", "injection") or die (mysqli_connect_error());
	
	$query = 'SELECT * FROM account WHERE id='.$user_id1.';';
	$query .= 'SELECT * FROM account WHERE id='.$user_id2.';';

	//echo $query."<br />";

	if (!mysqli_multi_query($mysqli, $query)) {
	    echo "Multi query failed:". mysqli_error();
	}

	do {
		if ($res = mysqli_store_result($mysqli)) {
			while($row = mysqli_fetch_assoc($res))
				echo "ID: ", $row["id"], ", Password: ", $row["pass"], ", Name: ", $row["name"], ", Balance: ", $row["balance"], "<br />";
		    mysqli_free_result($res);
	    }
	} while (mysqli_more_results($mysqli) && ($res=mysqli_next_result($mysqli)));
}
else{
	echo "You should provide at least one user ID";
}

?>
</body>
</html>
