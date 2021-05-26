<?php
	require_once('conn.php');
	/*$idFilm = $_GET['id'];
	$name = $_POST['name'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$comment = $_POST['comment'];

	$sql = "SELECT * FROM `user` WHERE TENUSER LIKE '$name' AND PASSWORD LIKE '$password' and USERNAME LIKE '$email'";
	$result = $conn->query($sql);
	$infoUser = $result->fetch_assoc();

	if($infoUser){
		$sql = "INSERT INTO binhluan(NAME,PHIMCOMMENT,NOIDUNG) VALUES(?, ?, ?)";
		$stmt = $conn->prepare($sql);
		$stmt->bind_param("sss", $infoUser['IDUSER'], $idFilm, $comment);
		
		$isOK = $stmt->execute();
		$stmt->close();
		$conn->close();
		echo '<script language="javascript">alert("Bạn đã bình luận thành công"); window.location="index.php";</script>';
	}*/
try {
    $dbh = new PDO('mysql:host=localhost;dbname=qlfilm', 'root','');
    
	} catch (PDOException $e) {
	    print "Error!: " . $e->getMessage() . "<br/>";
	    die();
	}

	$name = $_POST['name'];
	$email = $_POST['email'];
	$password = $_POST['password'];
	$comment = $_POST['comment'];	
	$idFilm = $_GET['id'];

	if (isset($dbh)) {
		$sql = "SELECT * FROM `user` WHERE TENUSER LIKE '$name' AND PASSWORD LIKE '$password' and USERNAME LIKE '$email'";
		$stmt = $dbh->prepare($sql);
		if ($stmt->execute()) {
			# code..
			$idUser = @$stmt->fetchAll()[0]['IDUSER'];
			$stmt->closeCursor();
			$dataUpload = [
				'idUser' => $idUser,
				'comment' => $comment,
				'idFilm' => $idFilm,
				'time' => date("Y-m-d h:i:sa"),
			];

			$insert = "INSERT INTO binhluan (NAME, PHIMCOMMENT, NOIDUNG, TIME) VALUES (:idUser, :idFilm, :comment, :time)";		
			$stmt = $dbh->prepare($insert);
			if ($stmt->execute($dataUpload)) {
				# code...
				echo ("bình luận hành công");
			}else {
				echo "bình luận thất bại";
			}
		
			$stmt->closeCursor();

		}
		
			}else{
		echo 'not connect to database';
			if($idUser){
				echo "bạn nhập sai thông tin ";
			}
	}
		
?>