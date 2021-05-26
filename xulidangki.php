<?php
	require_once("conn.php");
	header('Content-Type: text/html; charset=utf-8');
	
	// $servername = 'localhost';
	// $username = 'root';
	// $password = '';
	// $db = 'databasephim';
	
	$name = $_POST["name"];
	$email = $_POST["email"];
	$password = $_POST["password"];
	$password2 = $_POST["confirm_password"];
	
	$result = [];

	$test = 'SELECT * from user as a where a.USERNAME = "'.$email.'"';
	$row = $conn->query($test);
	$result = $row->fetch_assoc();
	
	echo $result;

	if ($result && count($result) > 0) {
		echo '<script language="javascript">alert("Tên hoặc E-mail đăng ký bị trùng"); window.location="index.php";</script>';
		die ();
	}
	else if ($password != $password2) {
		echo '<script language="javascript">alert("Xác nhận mật khẩu không khớp"); window.location="index.php";</script>';
		die ();
	}
	else{
		$sql = "INSERT INTO user(TENUSER,USERNAME,PASSWORD) VALUES('".$name."',"."'".$email."',"."'".$password."')";
		$insert = $conn->query($sql);// prepare là khởi tạo đối tượng
		print_r($insert);
		if($insert)
			echo'<script> language="javascript">alert("Đăng ký thành công"); window.location="index.php";</script>';
		else echo 'insert fail';
		// 
		$conn->close();
	}
?>