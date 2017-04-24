<?php

echo "Enter selection: ";

$f = fopen( 'php://stdin', 'r' );
$sel = fgets($f);
fclose( $f );

if($sel == 1){

$i = 30;
$j = filter_var($i, FILTER_VALIDATE_INT);
echo $j . "\n";
if($j)
	echo "1- j = ". $j . "\n";
else
	echo "1- Data is not valid\n";

$fdata = array("options"=>array("min_range"=>15, "max_range"=>50));
$j = filter_var($i, FILTER_VALIDATE_INT, $fdata);
if($j)
	echo "2- j = ". $j . "\n";
else
	echo "2- Data is not valid\n";

}
elseif($sel == 2){

$data = array("int"=>10, "float"=>30.1);
$filter = array("int"=>array("filter"=>FILTER_VALIDATE_INT, "options"=>array("min_range"=>0)), "float"=>array("filter"=>FILTER_VALIDATE_FLOAT));
$valid = filter_var_array($data, $filter);
var_dump($valid);

$data = array("int"=>"asda10", "float"=>30.1);
$valid = filter_var_array($data, $filter);
var_dump($valid);

}
elseif($sel == 3){

$data = array("int"=>10, "float"=>30.1);
$filter2 = array("int2"=>array("filter"=>FILTER_VALIDATE_INT, "options"=>array("min_range"=>0)), "float"=>array("filter"=>FILTER_VALIDATE_FLOAT));
$valid = filter_var_array($data, $filter2);
var_dump($valid);

}

elseif($sel == 4){
$valid_address = filter_input(INPUT_GET, "address", FILTER_VALIDATE_URL);
$filter = array("address"=>array("filter"=>FILTER_VALIDATE_URL), "ip"=>array("filter"=>FILTER_VALIDATE_IP));
$valid_get = filter_input_array(INPUT_GET, $filter);

}

elseif($sel == 5){

function convertSpace($string){
	return str_replace("_", " ", $string);
}
$string = "PHP_Scripting_is_fun!";
echo filter_var($string, FILTER_CALLBACK, array("options"=>"convertSpace")) . "\n";

}

elseif($sel == 6){
	$data="abc";
	$output=filter_var($data, FILTER_SANITIZE_NUMBER_INT);
	echo "input: ". $data .", output :". $output;
	$output = $output + 2;
	echo "output + 2: ". $output;
}
?>
