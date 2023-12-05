<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Database connection details
    $servername = "localhost";
    $username = "root";
    $password = "";
    $database = "dbappointment";

    // Create a connection to the database
    $conn = new mysqli($servername, $username, $password, $database);

    // Check the connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    // Get the form data
    $Name = $_POST["name"];
    $username = $_POST["username"];
    $email = $_POST["email"];
    $city = $_POST["address"];
    $number = $_POST["number"];

    // Update the admin's profile in the database
    $sql = "UPDATE tbladminaccounts
            SET name = '$Name', username = ' $username ', email = '$email', address = '$city', number = '$number' WHERE id = '7777777'";

    if ($conn->query($sql) === TRUE) {
        echo "<script>alert('Profile Update Successfully'); window.location.href='../editprofile2.html'; </script>";
    } else {
        echo "<script>alert('Error Updated Profile'); location.reload();</script>";
    }

    // Close the database connection
    $conn->close();
}
?>
