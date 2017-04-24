<html>
<head>
</head>
<body>
<?php

function xxxxxx($parser,$element_name,$element_attrs){
	switch($element_name){
		case "NOTE":
		    echo "-- Note --<br />";
		    break;
		case "TO":
			echo "To: ";
			break;
		case "FROM":
			echo "From: ";
			break;
		case "HEADING":
			echo "Heading: ";
			break;
		case "BODY":
			echo "Message: ";
			break;
	}
}

function yyyyyyyyyy($parser,$element_name){
	echo "<br />";
}

function zz($parser,$data){
	echo $data;
}

$parser=xml_parser_create();

xml_set_element_handler($parser,"xxxxxx","yyyyyyyyyy");

xml_set_character_data_handler($parser,"zz");

$fp=fopen("note.xml","r");

while ($data=fread($fp,4096)){
	xml_parse($parser,$data,feof($fp)) or die (sprintf("XML Error: %s at line %d", 
												xml_error_string(xml_get_error_code($parser)),
												xml_get_current_line_number($parser)));
}

xml_parser_free($parser);


/*
$xmlDoc = new DOMDocument('1.0', 'iso-8859-1');;
$xmlDoc->load("note.xml");

$x = $xmlDoc->documentElement;
foreach ($x->childNodes AS $item){
	print $item->nodeName . " = " . $item->nodeValue . "<br />";
}
 */

/*
$xml = simplexml_load_file("note.xml");

echo $xml->getName() . "<br />";

foreach($xml->children() as $child) {
	echo $child->getName() . ": " . $child . "<br />";
}
*/

?>

</body>
</html>
