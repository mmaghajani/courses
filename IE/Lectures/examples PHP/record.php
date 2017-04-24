<!DOCTYPE html>
<html>
<body>
<?php
	$a=$_REQUEST["in"];
	$b=$_GET["send"];
	$c=$_REQUEST["get"];

	$db = mysql_connect("127.0.0.1", "root", "12345678") or die(mysql_error());
	mysql_select_db("exams", $db) or die(mysql_error());

	if(filter_var($a, FILTER_VALIDATE_URL))
		mysql_query("INSERT INTO records(addr, st, gt) VALUES('$a', '$b', '$c');", $db) or die(mysql_error());

	mysql_close($db);	
?>
</body>
</html>
