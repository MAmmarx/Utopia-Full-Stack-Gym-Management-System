<?php
$servername = "localhost";
$username = "root";
$password = "";
$db = "gym";


$conn = mysqli_connect($servername, $username, $password, $db);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

$firstName = $_POST['firstName'] ;
$lastName = $_POST['secondName'] ;
$email = $_POST['email'] ;
$password = $_POST['password'] ;
$username = $_POST['username'] ;
$dob = $_POST['dob'] ;
$phone = $_POST['phone'] ;

if (!$firstName || !$lastName || !$email || !$password || !$username || !$dob || !$phone) {
    die("Error: Missing required fields.");
}

$hashedPassword = password_hash($password, PASSWORD_BCRYPT);

$stmt = $conn->prepare("INSERT INTO user (`First Name`, `Last Name`, `Email Address`, `Password`, `Username`, `date of birth`, `Phone Number`) 
VALUES (?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sssssss", $firstName, $lastName, $email, $hashedPassword, $username, $dob, $phone);

if ($stmt->execute()) {
    header("Location: index.html");
    exit();
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>
