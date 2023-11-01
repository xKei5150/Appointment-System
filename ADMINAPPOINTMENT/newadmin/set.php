<?php
include('security.php');

if(isset($_POST['registerbtn']))
{
    $username = $_POST['username'];
    $email = $_POST['email'];
    $password = $_POST['password'];
    $cpassword = $_POST['confirmpassword'];

    $email_query = "SELECT * FROM = tbladminaccounts WHERE email='$email' ";
    $email_query_run = mysqli_query($connection, $email_query);
    if(mysqli_num_rows($email_query_run) > 0)
    {
        $_SESSION['status'] = "O. Please Try Another one.";
        $_SESSION['status_code'] = "error";
        header('Location: setting.html');  
    }
    else
    {
        if($password === $cpassword)
        {
            $query = "UPDATE INTO tbladminaccounts ( email,password, username) VALUES ('$email','$password','$username')";
            $query_run = mysqli_query($connection, $query);
            
            if($query_run)
            {
                // echo "Saved";
                $_SESSION['status'] = "Admin Profile UPDATE";
                $_SESSION['status_code'] = "success";
                header('Location: setting.html');
            }
            else 
            {
                $_SESSION['status'] = "Admin Profile Not UPDATE";
                $_SESSION['status_code'] = "error";
                header('Location: setting.html');  
            }
        }
        else 
        {
            $_SESSION['status'] = "Password and Confirm Password Does Not Match";
            $_SESSION['status_code'] = "warning";
            header('Location: setting.html');  
        }
    }

}
?>

