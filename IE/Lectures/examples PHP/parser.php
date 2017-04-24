<?php

function mystart($parser, $element_name, $attr){
	echo "Start: ". $element_name ."\n";
}

function myend($parser, $element_name){
	echo "End: ". $element_name ."\n";
}

function my_char_data($parser, $d){
	echo "Char: ". $d ."\n";
}

$parser = xml_parser_create();
xml_set_element_handler($parser, "mystart", "myend");
xml_set_character_data_handler($parser, "my_char_data");

$data="<root><book><name>1</name><price>1000</price></book></root>";

xml_parse($parser, $data, TRUE);
xml_parser_free($parser);
?>
