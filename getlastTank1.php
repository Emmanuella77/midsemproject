<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "iotproject";


$con = mysqli_connect($servername,$username,$password,$dbname);
$data= array ();

$sql = "SELECT * FROM tankmonitor WHERE (TankID = 1) ORDER BY ID DESC LIMT 1";

if ($q = mysqli_query($con, $sql)){
while($row = $q -> fetch_assoc()){
echo "{$row[Water_level]} {$row['Timerecorded']} \n\n\n";
}
}

?>