<?php
session_start();

$servername = "localhost";
$username = "root";
$password = "";
$db = "gym";

// Establish connection
$conn = mysqli_connect($servername, $username, $password, $db);

if (!$conn) {
    http_response_code(500);
    echo json_encode(["error" => "Connection failed: " . mysqli_connect_error()]);
    exit();
}

// Get the form data
$username = $_POST['username'] ?? '';
$password = $_POST['password'] ?? '';

// Validate input
if (empty($username) || empty($password)) {
    http_response_code(400);
    echo json_encode(["error" => "Username or password is missing."]);
    exit();
}

// Check if the user exists
$stmt = $conn->prepare("SELECT `Password` FROM user WHERE `Username` = ?");
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $row = $result->fetch_assoc();
    $storedPassword = $row['Password'];

    // Verify password (assumes passwords are hashed in the database)
    if (password_verify($password, $storedPassword)) {
        $_SESSION['username'] = $username;

        // Redirect to index.html with the username on top
        echo "<script>
                window.location.href = 'index.html?username=" . urlencode($username) . "';
              </script>";
        exit();
    } else {
        echo "<script>alert('Incorrect username or password'); window.location.href = 'login.html';</script>";
    }
} else {
    echo "<script>alert('Incorrect username or password'); window.location.href = 'login.html';</script>";
}

// Close connection
$stmt->close();
$conn->close();
?>
