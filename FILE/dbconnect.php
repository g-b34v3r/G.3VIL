<?php

$servername="localhost";
$database="EvilAP";
$username="root";
$password="";


$conn = mysqli_connect($servername, $username, $database);
if (!$conn) {
     die("Connection is NOGO: " . mysqli_connect_error());
}
echo "Connection is GO:";
mysqli_close($conn);
?>
