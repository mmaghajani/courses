<?php
$name = $_REQUEST["n"]; $famanme = $_REQUEST["f"];
$grade = $_REQUEST["g"]; $num = $_REQUEST["i"];

if((strlen($num) > 0) && (strlen($famanme) > 0) && (strlen($grade) > 0) && (strlen($num) > 0)){
	$db = mysqli_connect("127.0.0.1", "root", "12345678", "students") or die(mysqli_connect_error());

	$result = mysqli_query($db, "INSERT INTO IE(name, fam, num, grade) VALUES('$name', '$famanme', '$num', '$grade');") or die(mysqli_error($db));

	mysqli_close($db);
	echo "Data has been inserted successfully <br />";
}
else{
	echo "Wrong Input";
}
?>

