<?php
$rmin = $_POST['min'];
$rmax = $_POST['max'];
$ruid = $_POST['user'];
$ip = $_SERVER['REMOTE_ADDR'];

echo "You really rock!!\n";

// get a timestamp of this receiving
$now = date("Y-m-d H:i:s");

// Build the record string with all information
$record = $now . ", " . $rmin . ", " . $rmax . ", " . $ruid . ", " . $ip . "\n";

$file = "record.txt";

if (file_exists($file)) {
    // if record file already exists
    $p = fopen($file, "a");  // open the record file in attach mode
} else {
    // create a new file
    $p = fopen($file, "w");
}

fwrite($p, $record);
fclose($p);
?>