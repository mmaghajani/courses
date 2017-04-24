<html>
<body>
<?php
class customException extends Exception {
	public function errorMessage() {
		$errorMsg = 'This is my error message, Exception has been throwed by this message: "' . $this->getMessage() .'"';
		return $errorMsg;
	}
}

try{
	$msg = "I am throwing an exception";
    throw new customException($msg);
}
catch(customException $e){
	echo $e->errorMessage();
}
?>
</body>
</html>
