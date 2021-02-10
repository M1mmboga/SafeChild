<?php

require __DIR__ . '/vendor/autoload.php';

// Use the REST API Client to make requests to the Twilio REST API to send SMS to parent
use Twilio\Rest\Client;

//Creates new record as per request by esp8266 module
    //Connect to Mysql database
    $servername = "localhost";
    $username = "root";
    $password = "";
    $dbname = "autisticchild";


// Create database connection
    $conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
    if ($conn->connect_error) {
        die("Database Connection failed: " . $conn->connect_error);
    }

    else{


//Get current date and time
// $d = date("Y-m-d");
//echo " Date:".$d."<BR>";
    $t = date("Y-m-d H:i:s");

        $sensorData1 = $_POST['sensor1'];
        $sensorChild = $_POST['child'];
        $sensorLatitude = $_POST['mylati'];
        $sensorLongitude = $_POST['mylongi'];
       

       $sql = "INSERT INTO pulses (pulsevalues, created_at, updated_at, childName, childLatitude, childLongitude) VALUES ('".$sensorData1."', '".$t."', '".$t."','".$sensorChild."','".$sensorLatitude."','".$sensorLongitude."')";

//SMS trigger from pulse sensor to send SMS to parent
       if((int)$_POST['sensor1'] > 70 ){

// Your Account SID and Auth Token from twilio.com/console
$sid = 'ACf47f7c6f7acaa1a3fac50d3139f6cfbb';
$token = 'd156ea190ce8b0f8f2ae3580b4bd1bd4';
$client = new Client($sid, $token);

// Use the client to do fun stuff like send text messages!
$client->messages->create(
    // the number you'd like to send the message to
    '+254705793148',
    [
        // A Twilio phone number you purchased at twilio.com/console
        'from' => '+16124008165',
        // the body of the text message you'd like to send
        'body' => 'Hey Parent! Kindly review your child pulse on the SafeChild Dashboard!'
    ]
);
       }

        if ($conn->query($sql) === TRUE) {
            echo "OK data entered";
        } else {
            echo "Error: " . $sql . "<br>" . $conn->error;
        }
 
//Close the database connection after entering data
    $conn->close();
}
?>