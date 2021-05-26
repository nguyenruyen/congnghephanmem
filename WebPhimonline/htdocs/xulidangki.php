<?php
	header('Content-Type: text/html; charset=utf-8');
	
	$servername = 'localhost';
	$username = 'root';
	$password = '';
	$db = 'databasephim';
	
	$conn = new mysqli($servername, $username, $password, $db);
	mysqli_set_charset($conn, 'UTF8');
	
	if (isset($_POST["register"])) {
		
		$name = $_POST["name"];
		$email = $_POST["email"];
		$password = $_POST["password"];
		$password2 = $_POST["conform password"];
		
		$sql = "SELECT * FROM user WHERE TENUSER = '$name' OR USERNAME = '$email'";
		$result = mysqli_query($conn, $sql);
		
		if (mysqli_num_rows($result) > 0) {
			echo '<script language="javascript">alert("Tên hoặc E-mail đăng ký bị trùng"); window.location="index.php";</script>';
			die ();
		}
		else if ($password != $password2) {
			echo '<script language="javascript">alert("Xác nhận mật khẩu không khớp"); window.location="index.php";</script>';
			die ();
		}
		else{
			$sql = "INSERT INTO user(TENUSER,USERNAME,PASSWORD) VALUES(?, ?, ?)";
			$stmt = $conn->prepare($sql);
			$stmt->bind_param("sss", $name, $email, $password);
			
			$isOK = $stmt->execute();
			$stmt->close();
			$conn->close();
			echo '<script language="javascript">alert("Đăng ký thành công"); window.location="index.php";</script>';
		}
	}

?>