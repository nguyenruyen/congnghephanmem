<?php
	
	require_once('conn.php');
	$id = $_GET['id'];
	$sql = "DELETE FROM user WHERE IDUSER=$id";
 
		mysqli_query($conn, $sql);
		mysqli_close($conn);
		header("Location: quanliuser.php");
	

?>