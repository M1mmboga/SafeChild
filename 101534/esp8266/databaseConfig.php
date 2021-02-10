<?php

//Connect to database and create table
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "autisticchild";


    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    else{
        echo "Connected";
    }

    $conn->close();
?>