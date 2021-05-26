<?php
	$servername = 'localhost';
	$username = 'root';
	$password = '';
	$db = 'databasephim';
	
	$conn = new mysqli($servername, $username, $password, $db);
	mysqli_set_charset($conn, 'UTF8');
	if ($conn->connect_error) {
		die($conn->connect_error);
	}
?>