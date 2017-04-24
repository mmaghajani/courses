<?php
echo "Salaam\n";
echo "Enter two numbers\n";
$fp=fopen("php://stdin", "r");
$input1=0;
$input2=0;
fscanf($fp,"%d", $input1);
fscanf($fp,"%d", $input2);
echo $input1 ." + ". $input2 ." = ". ($input1 + $input2);
?>
