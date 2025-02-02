<?php
$servername = "localhost";
$username = "root"; 
$password = "";     
$db = "gym";    

// Establish connection
$conn = mysqli_connect($servername, $username, $password, $db);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// Use $_POST for form data
$username = $_POST['Username'];
$fullName = $_POST['Full Name'];
$gender = $_POST['Gender'];
$dob = $_POST['Date of Birth'];
$email = $_POST['Email Address'];
$weight = $_POST['Weight'];
$height = $_POST['Height'];
$fitnessGoal = $_POST['Fitness Goal'];
$exerciseFrequency = $_POST['Exercise Frequency'];
$activityLevel = $_POST['Activity Level'];
$workoutLocation = $_POST['Workout Location'];
$smoker = isset($_POST['Smoker']) ? 1 : 0;
$pregnant = isset($_POST['Pregnant']) ? 1 : 0;
$healthProblems = $_POST['Health Problems'];
$injuries = $_POST['Injuries'];
$trainer = $_POST['Trainer'];

// Check if all required fields are filled
if (!$username || !$fullName || !$gender || !$dob || !$email || !$weight || !$height || !$fitnessGoal || !$exerciseFrequency || !$activityLevel || !$workoutLocation || !$healthProblems || !$injuries || !$trainer) {
    die("Error: Missing required fields.");
}

// Prepare SQL query using prepared statements
$stmt = $conn->prepare("INSERT INTO trainer_booking ('Username', `Full Name`, 'Gender', `Date of Birth`, `Email Address`, 'Weight', 'Height', `Fitness Goal`, `Exercise Frequency`, `Activity Level`, `Workout Location`, 'Smoker', 'Pregnant', `Health Problems`, 'Injuries', 'Trainer') 
VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");

// Bind the parameters
$stmt->bind_param("ssssssssssssssss", $username, $fullName, $gender, $dob, $email, $weight, $height, $fitnessGoal, $exerciseFrequency, $activityLevel, $workoutLocation, $smoker, $pregnant, $healthProblems, $injuries, $trainer);

// Execute the query
if ($stmt->execute()) {
    echo "<script>alert('Booking successful!');</script>";
} else {
    echo "<script>alert('Error: " . $stmt->error . "');</script>";
}

// Close the connection
$stmt->close();
$conn->close();
?>
