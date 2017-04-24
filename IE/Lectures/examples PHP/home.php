<?php
session_start();
if(!(isset($_SESSION["auth"]) && $_SESSION["auth"]))
	header("Location: login.php");
?>
<html>
<head>
<script type="text/javascript">
function logout(){
	xmlhttp=new XMLHttpRequest();
	xmlhttp.open("GET", "logout.php", false);
	xmlhttp.send("");
}
</script>
</head>
<body onunload="logout()">
Welcome to your home!
<form action="logout.php" method="GET">
<input type="submit" value="Logout" />
</form>
</body>
</html>
