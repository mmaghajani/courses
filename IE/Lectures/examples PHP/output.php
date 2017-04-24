<?php
$foo = 25;			// Numerical variable
$bar = "Hello";		// String variable

echo $bar."\n";			// Outputs Hello
echo $foo,$bar,"\n";		// Outputs 25Hello
echo "5x5=".$foo."\n";	// Outputs 5x5=25
echo "5x5=$foo\n";		// Outputs 5x5=25
echo '5x5=$foo\n';		// Outputs 5x5=$foo\n
print "\n";			// newline
print "Output is ".$foo;	// Output is 25
var_dump($foo);          // int(25)
?>
