<?php

function prompt(){
    header('WWW-Authenticate: Basic realm="Protected Page"');
    header('HTTP/1.0 401 Unauthorized');
    die('You must enter a valid username & password');

}

function checkpass($name,$pass){
	if((strcmp($name,"abc") == 0) && (strcmp($pass,"123") == 0))
		return TRUE;
	else
		return FALSE;
}

if(!isset($_SERVER['PHP_AUTH_USER'])){
	prompt();
} 
else{
	//do{
	if(!checkpass($_SERVER['PHP_AUTH_USER'], $_SERVER['PHP_AUTH_PW']) == TRUE)
		//	break;
		prompt();
	//}
	//while(TRUE);
}
?>

<!DOCTYPE html>
<html>
<head>
	<title>Important Page</title>
	<meta charset="utf-16" />
</head>

<body>
<h2>You have singed in successfully</h2>
</body>

