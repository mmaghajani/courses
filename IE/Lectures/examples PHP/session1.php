<?php
session_start();
$_SESSION["cnt"] = (isset($_SESSION["cnt"])) ? $_SESSION["cnt"] + 1 : 1;
?>
<html>
<head> </head>
<body>
You have visited this page <?php echo $_SESSION["cnt"]; ?> times.
<form method="GET" action="reset.php">
<input type="submit" name="reset" value="Reset" />
</form>
</body>
</html>
