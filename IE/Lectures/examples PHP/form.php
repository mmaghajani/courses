<html>
<body>

<?php
	@($grade = $_POST["grade"]);
	@($lang  = $_POST["lang"]);

	if(!empty($grade))
		echo "You are ". $grade;
	else
		echo "I don't know your grade";

	echo "<br />";

	echo "You are master in ";
	for($i = 1; $i <= 6; $i++)
		if(isset($_POST["skill_".$i]))
			echo $_POST["skill_".$i]. " ";

	echo "<br />";
	echo "You love ". $lang;

	@($name = $_GET["name"]);
	@($fam  = $_GET["fam"]);
	@($title  = $_GET["title"]);

	if((! empty($name) > 0) && (! empty($fam) > 0) && (! empty($title) > 0)){
		echo "A message by GET <br />";
		echo "<h2> Welcome " . $title ." ". $name ." ". $fam ." </h2>";
	}

	echo "<br />";
	
	if(isset($_FILES["myfile"])){
		if($_FILES["myfile"]["error"] > 0){
		    echo "Error: " . $_FILES["myfile"]["error"] . "<br />";
		}
		else{
			echo "Upload: " . $_FILES["myfile"]["name"] . "<br />";
			echo "Type: " . $_FILES["myfile"]["type"] . "<br />";
			echo "Size: " . ($_FILES["myfile"]["size"] / 1024) . " Kb<br />";
			echo "Temp Store: " . $_FILES["myfile"]["tmp_name"] ."<br />";
	
			if (file_exists("upload/" . $_FILES["myfile"]["name"])){
				echo $_FILES["myfile"]["name"] . " already exists. ";
			}
			else{
				move_uploaded_file($_FILES["myfile"]["tmp_name"],	"upload/" . $_FILES["myfile"]["name"]);
				echo "Stored in: " . "upload/" . $_FILES["myfile"]["name"];
			}
	
		}
	}
?>

</body>
</html>
