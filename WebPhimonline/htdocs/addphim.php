<?php
	require_once('conn.php');

	$name = $_POST['name'];
	$year = $_POST['year'];
	$type = $_POST['type'];
	$country = $_POST['country'];
	$directors = $_POST['directors'];
	$actor = $_POST['actor'];
	$time = $_POST['time'];
	$rate = $_POST['rate'];
	$description = $_POST['description'];
	$link = $_POST['link'];
	$trailer = $_POST['trailer'];
	
	
	
	$target = "images/capnhat/" . $_FILES['fileUpload']['name'];
	move_uploaded_file($_FILES['fileUpload']['tmp_name'], $target);
	
	$sql = "INSERT INTO film(TENFILM,HINH,DIENVIEN,THONGTIN,THELOAI,THOILUONG,NAMSX,SORATING,QUOCGIA,DAODIEN,LINKFILM,LINKTRAILER) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	$stmt = $conn->prepare($sql);
	$stmt->bind_param("ssssdddddsss", $name, $target,$actor,$description,$type,$time,$year,$rate,$country,$directors,$link,$trailer);
	
	$isOK = $stmt->execute();
	
	$stmt->close();
	$conn->close();
	
	header("Location: quanliphim.php");
?>