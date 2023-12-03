<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Database connection details
    $servername = "localhost:3307";
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

    $username = $_POST["username"];
    $email = $_POST["email"];
    $pass = $_POST["old_pass"];

    // Update the admin's profile in the database
    $sql = "UPDATE tbladminaccounts
            SET  email = ' $email', username = ' $username ', password = ' $pass 'WHERE id = '2343'";

    if ($conn->query($sql) === TRUE) {
        echo "<script>alert('Account Updated Successfully'); window.location.href='../setting.html'; </script>";
    } else {
        echo "<script>alert('Error Account Profile'); location.reload();</script>";
    }
    
    // Close the database connection
    $conn->close();
}
?>
