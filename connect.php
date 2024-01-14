<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quản lý dữ liệu </title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
<h2>Tìm kiếm Quán Net</h2>
    <form action="connect.php" method="post">
        <input type="hidden" name="action" value="search">
        Từ khóa: <input type="text" name="keyword" required>
        <input type="submit" value="Tìm kiếm">
    </form>
<img src="https://cybercore.vn/wp-content/uploads/2020/09/thi-cong-thiet-ke-phong-cyber-game2.jpg" style="width: 100%; height: 750px">

    <h1>Quản lý dữ liệu </h1>

    <?php
    $server = "localhost:3306";
    $user="root";
    $pass="";
    $database="cyber";
   
    $conn=mysqli_connect($server,$user,$pass,$database);

    // Kiểm tra kết nối
    if ($conn->connect_error) {
        die("Kết nối thất bại: " . $conn->connect_error);
    }

    // Xử lý thêm mới
    if (isset($_POST["action"]) && $_POST["action"] == "add") {
        $name = $_POST["name"];
        $location = $_POST["location"];
        $open_time = $_POST["open_time"];
        $close_time = $_POST["close_time"];

        $sql = "INSERT INTO cyber (name, location, open_time, close_time) VALUES ('$name', '$location', '$open_time', '$close_time')";
        if ($conn->query($sql) === TRUE) {
            echo "Thêm mới dữ liệu thành công!";
        } else {
            echo "Lỗi: " . $sql . "<br>" . $conn->error;
        }
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
        } else {
            echo "Lỗi: " . $sql . "<br>" . $conn->error;
        }
    }

    // Xử lý xóa
    if (isset($_GET["action"]) && $_GET["action"] == "delete") {
        $id = $_GET["id"];
        $sql = "DELETE FROM cyber WHERE id=$id";
        if ($conn->query($sql) === TRUE) {
            echo "Xóa dữ liệu thành công!";
        } else {
            echo "Lỗi: " . $sql . "<br>" . $conn->error;
        }
    }
    

    // Xử lý tìm kiếm
if (isset($_POST["action"]) && $_POST["action"] == "search") {
    $keyword = $_POST["keyword"];
    $sql = "SELECT id, name, location, open_time, close_time FROM cyber WHERE name LIKE '%$keyword%'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<h2>Kết quả tìm kiếm</h2>";
        echo "<table>";
        echo "<tr><th>ID</th><th>Tên</th><th>Vị trí</th><th>Thời gian mở cửa</th><th>Thời gian đóng cửa</th><th>Thao tác</th></tr>";
        while ($row = $result->fetch_assoc()) {
            echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."</td><td>".$row["location"]."</td><td>".$row["open_time"]."</td><td>".$row["close_time"]."</td><td><a href='edit.php?id=".$row["id"]."'>Sửa</a> | <a href='connect.php?action=delete&id=".$row["id"]."'>Xóa</a></td></tr>";

        }
        echo "</table>";
    } else {
        echo "<p>Không có kết quả tìm kiếm</p>";
    }
} else {
    // Hiển thị dữ liệu từ bảng nếu không có tìm kiếm
    $sql = "SELECT id, name, location, open_time, close_time FROM cyber";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table>";
        echo "<tr><th>ID</th><th>Tên</th><th>Vị trí</th><th>Thời gian mở cửa</th><th>Thời gian đóng cửa</th><th>Thao tác</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr><td>".$row["id"]."</td><td>".$row["name"]."</td><td>".$row["location"]."</td><td>".$row["open_time"]."</td><td>".$row["close_time"]."</td><td><a href='edit.php?id=".$row["id"]."'>Sửa</a> | <a href='connect.php?action=delete&id=".$row["id"]."'>Xóa</a></td></tr>";

        }
        echo "</table>";
    } else {
        echo "<p>Không có dữ liệu</p>";
    }
}


    $conn->close();
    ?>

    <h2>Thêm mới dữ liệu</h2>
    <form action="connect.php" method="post">
        <input type="hidden" name="action" value="add">
        Tên: <input type="text" name="name"><br>
        Vị trí: <input type="text" name="location"><br>
        Thời gian mở cửa: <input type="time" name="open_time"><br>
        Thời gian đóng cửa: <input type="time" name="close_time"><br>
        <input type="submit" value="Thêm mới">
    </form>
   
    
    <br>
    <a href="connect.php">Quay lại</a>
    
</body>
</html>
