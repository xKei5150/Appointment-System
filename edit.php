<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information Form</title>
</head>
<body>
    <h1>User Information</h1>
    <form action="insert_edit_user.php" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>
        <br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email" required>
        <br>
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required>
        <br>
        <input type="submit" name="submit" value="Submit">
    </form>

    <?php
    // Function to create a database connection
    function connectDB() {
        $servername = "localhost:3307";
        $username = "your_username";
        $password = "your_password";
        $dbname = "your_database_name";

        $conn = new mysqli($servername, $username, $password, $dbname);
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }
        return $conn;
    }

    // Function to insert user information into the database
    function insertUser($name, $email, $age) {
        $conn = connectDB();
        $sql = "INSERT INTO users (name, email, age) VALUES ('$name', '$email', '$age')";
        if ($conn->query($sql) === TRUE) {
            echo "New user inserted successfully!";
        } else {
            echo "Error inserting new user: " . $conn->error;
        }
        $conn->close();
    }

    // Handle form submission
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST["submit"])) {
        $name = $_POST["name"];
        $email = $_POST["email"];
        $age = $_POST["age"];
        insertUser($name, $email, $age);
    }
    ?>
</body>
</html>