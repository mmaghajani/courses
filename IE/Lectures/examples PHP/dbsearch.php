<?php
$column = $_REQUEST["col"]; $value = $_REQUEST["query"];

if((strlen($column) > 0) && (strlen($value) > 0)){
	$db = mysqli_connect("127.0.0.1", "root", "12345678", "students") or die(mysqli_connect_error());

   $result = mysqli_query($db, "SELECT name,fam,num,grade FROM IE WHERE $column='$value' ORDER BY grade DESC") or die(mysqli_error($db));

	while($row = mysqli_fetch_assoc($result))
		echo "Name: ", $row["name"], ", Family: ", $row["fam"], ", Std #: ", $row["num"], ", Grade: ", $row["grade"], "<br />";

	mysqli_free_result($result);
	mysqli_close($db);
}
else{
	echo "Wrong Input";
}
?>

