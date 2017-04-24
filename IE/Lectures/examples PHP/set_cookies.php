<?php
		$expire = time()+30*24*60*60;
		setcookie("username1", "testcookie", $expire);
		setcookie("username2", "testcookie", $expire, "/IE/php", ".mail.think.pad");
		setcookie("username3", "testcookie", $expire, "/IE/php", ".www.think.pad");
		setcookie("username4", "testcookie", $expire, "/IE/php", ".think.pad");
		setcookie("username5", "testcookie", $expire, "/IE/php", ".pad");
		setcookie("username6", "testcookie", $expire, "/IE");
		setcookie("username7", "testcookie", $expire, "/IE/php/tmp");
		setcookie("username8", "testcookie", $expire, "/123");
		setcookie("username9", "testcookie", $expire, "/", ".google.com");
?>
<html>
<head>
</head>
<body>
<h1>I have set some cookies, please check</h1>
</body>
</html>
