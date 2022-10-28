<?php
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "iotproject";

    $con = mysqli_connect($servername,$username,$password,$dbname);
    
    $data=array(); 
   // $q=mysqli_query($con,"SELECT * FROM level_reading");

   $sql = "SELECT * FROM (
    SELECT * 
    FROM tankmonitor 
    WHERE (TankID = 2)  ORDER BY ID DESC LIMIT 5
  ) AS `table` ORDER by ID ASC";

//check what ID is 

   if ($q=mysqli_query($con, $sql)) {
    while ($row = $q->fetch_assoc()){
        echo "{$row['Water_level']}  {$row['Timerecorded']} \n";
    }
   } 
   
?>
