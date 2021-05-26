<?php
	
	require_once('conn.php');
	$id = $_GET['id'];
	$sql = "DELETE FROM binhluan WHERE IDCOMMENT=$id";
 
		mysqli_query($conn, $sql);
		mysqli_close($conn);
		header("Location: quanlicomment.php");
	

?>