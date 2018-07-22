<?php

function myErrorHandler($errno, $errstr, $errfile, $errline){
    switch ($errno) {
    case E_USER_ERROR:
        echo "<b>My ERROR</b> [$errno] $errstr<br />\n";
        echo "Fatal error on line $errline in file $errfile \n";
		exit(1);
    case E_USER_WARNING:
		echo "<b>My WARNING</b> [$errno] $errstr<br />\n"; 
		break;
	default:
		echo "<b>Some other errors</b>".$errno;

    }
	return true; // don't run internal error handler
}

set_error_handler("myErrorHandler", E_ALL);
$fd = fopen("data.bin", "r");
if($fd == null)
	trigger_error("Cannot open file", E_USER_ERROR);
if(filesize("data.bin") == 0)
	trigger_error("Data file is empty", E_USER_WARNING);
fclose($fd);

$db=mysqli_connect("127.0.0.1", "rootsdsd", "1234", "injection");

?>
