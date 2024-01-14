<?php
$server = "localhost:3306";
$user = "root";
$pass = "";
$database = "cyber";

$conn = mysqli_connect($server, $user, $pass, $database);

// Check connection
if ($conn->connect_error) {
    die("Kết nối thất bại: " . $conn->connect_error);
}

// Xử lý sửa
if (isset($_POST["action"]) && $_POST["action"] == "edit") {
    $id = $_POST["id"];
    $name = $_POST["name"];
    $location = $_POST["location"];
    $open_time = $_POST["open_time"];
    $close_time = $_POST["close_time"];

    $sql = "UPDATE cyber SET name='$name', location='$location', open_time='$open_time', close_time='$close_time' WHERE id=$id";
    if ($conn->query($sql) === TRUE) {
        echo "Cập nhật dữ liệu thành công!";
        header("Location: connect.php");
    } else {
        echo "Lỗi: " . $sql . "<br>" . $conn->error;
    }
}

$conn->close();
?>
