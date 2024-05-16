<?php
$servername = "your_server";
$username = "your_username";
$password = "your_password";
$dbname = "your_db_name";

// Создание соединения
$conn = new mysqli($servername, $username, $password, $dbname);

// Проверка соединения
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$subject = $_POST['subject'];
$date = $_POST['date'];

// Вставка данных в таблицу
$sql = "INSERT INTO schedule (subject_id, date) VALUES ((SELECT id FROM subjects WHERE title='$subject'), '$date')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
