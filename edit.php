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

// Retrieve the ID from the URL
$id = $_GET["id"];

// Retrieve the record based on the ID
$sql = "SELECT id, name, location, open_time, close_time FROM cyber WHERE id = $id";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Fetch the record data
    $edit_data = $result->fetch_assoc();
} else {
    echo "Không tìm thấy dữ liệu cho ID: $id";
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sửa dữ liệu</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<img src="https://cybercore.vn/wp-content/uploads/2020/09/thi-cong-thiet-ke-phong-cyber-game2.jpg" style="width: 100%; height: 750px">
    <h1>Sửa dữ liệu</h1>

    <form action="update.php" method="post">
        <input type="hidden" name="action" value="edit">
        <input type="hidden" name="id" value="<?php echo $edit_data['id']; ?>">
        Tên: <input type="text" name="name" value="<?php echo $edit_data['name']; ?>"><br>
        Vị trí: <input type="text" name="location" value="<?php echo $edit_data['location']; ?>"><br>
        Thời gian mở cửa: <input type="time" name="open_time" value="<?php echo $edit_data['open_time']; ?>"><br>
        Thời gian đóng cửa: <input type="time" name="close_time" value="<?php echo $edit_data['close_time']; ?>"><br>
        <input type="submit" value="Lưu">
    </form>

    <br>
    <a href="connect.php">Quay lại</a>
</body>
</html>
