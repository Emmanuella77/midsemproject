<?php
$servername= "localhost";
$username="root";
$password="";
$dbname="iotproject";

$con = mysqli_connect($servername,$username,$password,$dbname);
$waterlevel=$_GET['Water_level'];
$tankid=$_GET['TankID'];


$sql = "INSERT INTO tankmonitor (Water_level, TankID) VALUES ('{$waterlevel}', '{$tankid}')";
if (mysqli_query($con, $sql)) 
echo "New record created successfully";
else
echo "it failed";


