<?php
session_start();
if (!isset($_SESSION['isLoggedIn']) || $_SESSION['isLoggedIn'] != true)
{
	header("Location: login.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
	
</head>
<body>

<style>
    body{
        padding-top: 50px;
    }
    table{

        text-align: center;
    }
    td{
        padding: 10px;
    }
    tr.item{
        border-top: 1px solid #5e5e5e;
        border-bottom: 1px solid #5e5e5e;
    }

    tr.item:hover{
        background-color: #d9edf7;
    }

    tr.item td{
        min-width: 150px;
    }

    tr.header{
        font-weight: bold;
    }

    a{
        text-decoration: none;
    }
    a:hover{
        color: deeppink;
        font-weight: bold;
    }
</style>


<script>
    $(document).ready(function () {


        $(".delete").click(function () {
			id = $(this).attr("id");
			$("#delete").attr("href", "delete.php?id="+id);
            $('#myModal').modal({
                backdrop: 'static',
                keyboard: false
            });

        });


    });
</script>

		<center><h1><a href="#">Thể Loại</a></h1></center>
<table cellpadding="10" cellspacing="10" border="0" style="border-collapse: collapse; margin: auto">
		
		<ul class="nav nav-pills">
		  <li class="nav-item">
			<a class="nav-link active" href="add.php">Thêm phim</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link active" href="index.php">Trang chủ</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanliphim.php">Tất cả</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="#">Thể loại</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanliquocgia.php">Quốc gia</a>
		  </li>
		   <li class="nav-item">
			<a class="nav-link" href="quanliuser.php">User</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanlicomment.php">Bình Luận</a>
		  </li>
		</ul>
    <tr class="header">
        <td>Hình</td>
        <td>Tên phim</td>
		<td>Thể Loại</td>
		
		
    </tr>
	<?php 
	require_once('conn.php');
	$sql = "SELECT film.IDFILM, film.TENFILM, theloai.TENTHELOAI, film.NAMSX , film.SORATING , film.HINH, theloai.IDTHELOAI
			FROM film
			INNER JOIN theloai ON theloai.IDTHELOAI = film.THELOAI";
			
		  
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while ($row = $result->fetch_assoc()) {
	?>
    <tr class="item">
        <td><img src="<?= $row['HINH'] ?>" style="max-height: 80px"></td>
        <td><?= $row['TENFILM'] ?></td>
		<td><?= $row['TENTHELOAI'] ?></td>
		
		
        <td> <a href="deletephim.php?id=<?= $row['IDFILM']?>" class="delete">Delete</a></td>
    </tr>
	<?php }
	}?>
    <tr class="control" style="text-align: right; font-weight: bold; font-size: 17px">
        <td colspan="5">
            <p>Tổng phim: <?= $result->num_rows ?></p>
        </td>
    </tr>
	
</table>
<br>
	<a href="logout.php"<button  type="button" class="btn btn-primary btn-lg btn-block">Đăng xuất </a></button>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>