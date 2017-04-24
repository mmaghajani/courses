<!DOCTYPE html>
<html>
<body>
Some information from $_SERVER <br />
<?php
print "SERVER_ADDR: ". $_SERVER['SERVER_ADDR'] ."<br />";
print "SERVER_PORT: ". $_SERVER['SERVER_PORT'] ."<br />";
print "REQUEST_METHOD: ". $_SERVER['REQUEST_METHOD'] ."<br />";
print "REMOTE_ADDR: ". $_SERVER['REMOTE_ADDR'] ."<br />";
print "REMOTE_PORT: ". $_SERVER['REMOTE_PORT'] ."<br />";
?>
</body>
</html>
