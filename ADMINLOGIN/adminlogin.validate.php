<?php
session_start();
require_once 'connect.php'; // Ensure this file contains the correct database connection setup

if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $user = $_POST['mail']; // Fetching user email from form
    $pass = $_POST['pass']; // Fetching password from form

    // Direct SQL query - vulnerable to SQL injection
    $query = "SELECT * FROM tbladminaccounts WHERE email='$user' AND password='$pass'";
    $result = mysqli_query($con, $query);

    if ($result && mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result);

        // Assign session variables
        $_SESSION['username'] = $user;  // Assigning the user email to the session
        $_SESSION['usertype'] = $row['usertype'];  // Storing user type in session

        // Redirect based on usertype
        switch ($row['usertype']) {
            case "registrar":
                header("location: ../ADMINAPPOINTMENT/newadmin/index.php");
                break;
            case "gymnasium":
                header("location: ../ADMINRESERVATION/index.php");
                break;
            case "deanoffice":
                header("location: ../ADMINAPPOINTMENT/deanoffice/index.php");
                break;
            case "jhregistrar":
				header("location: ../ADMINAPPOINTMENT/jsregistrar/index.php");
				break;
			case "emrc":
				header("location: ../ADMINRESERVATIONemrc/index.php");
				break;
			case "fhall":
				header("location: ../ADMINRESERVATIONfhall/index.php");
				break;
			case "jhprincipal":
				header("location: ../ADMINAPPOINTMENT/JHprincipal/index.php");
				break;
            default:
                echo "<script>alert('User type not recognized'); window.location.href=' ../ADMINLOGIN/adminloginindex.php'; </script>";
                break;
        }
    } else {
        // Handle case where no user is found or query fails
        echo "<script>alert('User and password not match'); window.location.href=' ../ADMINLOGIN/adminloginindex.php'; </script>";
    }
}
?>
