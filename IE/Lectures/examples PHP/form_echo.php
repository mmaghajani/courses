<html>
<body>

<?php

	$get_keys = array_keys($_GET);
	$post_keys = array_keys($_POST);

	$get_size = count($get_keys);
	if($get_size > 0){
		echo "Following name=value pairs are submitted by GET<br />";
		for($i = 0; $i < $get_size; $i++){
			echo $get_keys[$i] . ' = "' . $_GET[$get_keys[$i]] . '" <br />';
		}
	}
	else{
		Echo "Nothing is submitted by GET<br />";
	}
	
	$post_size = count($post_keys);
	if($post_size > 0){
		echo "<br />Following name=value pairs are submitted by POST<br />";
		for($i = 0; $i < $post_size; $i++){
			echo $post_keys[$i] . ' = "' . $_POST[$post_keys[$i]] . '" <br />';
		}
	}
	else{
		Echo "<br />Nothing is submitted by POST<br />";
	}

	if(isset($_FILES["fileUpload"])){
		echo "<br />The following file is uploaded<br />";
		if($_FILES["fileUpload"]["error"] > 0){
		    echo "Error: " . $_FILES["fileUpload"]["error"] . "<br />";
		}
		else{
			echo "Upload: " . $_FILES["fileUpload"]["name"] . "<br />";
			echo "Type: " . $_FILES["fileUpload"]["type"] . "<br />";
			echo "Size: " . ($_FILES["fileUpload"]["size"] / 1024) . " Kb<br />";
		}
	}	
	else{
		Echo "<br />No file is uploaded<br />";
	}

?>

</body>
</html>
