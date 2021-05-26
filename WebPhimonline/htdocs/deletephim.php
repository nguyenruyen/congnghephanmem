<?php
	
	require_once('conn.php');
	$id = $_GET['id'];
	$sql = "DELETE FROM film WHERE IDFILM=$id";
 
		mysqli_query($conn, $sql);
		mysqli_close($conn);
		header("Location: quanliphim.php");
	

?>