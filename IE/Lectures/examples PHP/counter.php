<?php
 
$data = file_get_contents("counter"); 
$data = $data + 1;
file_put_contents("counter", $data);
echo "This page has been viewed " . $data . " times ";

?>
