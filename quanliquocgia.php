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
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <script src="./js/jquery-3.5.1.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
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
<ul class="nav nav-pills">
		  <li class="nav-item">
			<a class="nav-link active" href="add.php">Thêm phim</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="index.php">Trang chủ</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanliphim.php">Tất cả</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanlitheloai.php">Thể loại</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="#">Quốc gia</a>
		  </li>
		   <li class="nav-item">
			<a class="nav-link" href="quanliuser.php">User</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanlicomment.php">Bình Luận</a>
		  </li>
		</ul>
		<center><h1><a href="#">Quốc gia</a></h1></center>
<table cellpadding="10" cellspacing="10" border="0" style="border-collapse: collapse; margin: auto">
		
	
    <tr class="header">
        <td>Hình</td>
        <td>Tên phim</td>
		<td>Quốc gia</td>
		
		
    </tr>
	<?php 
	require_once('conn.php');
	$sql = "SELECT film.IDFILM, film.TENFILM, quocgia.TENQUOCGIA, film.NAMSX , film.SORATING , film.HINH
			FROM film 
			INNER JOIN quocgia ON quocgia.IDQUOCGIA = film.QUOCGIA";
			
		  
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while ($row = $result->fetch_assoc()) {
	?>
    <tr class="item">
        <td><img src="<?= $row['HINH'] ?>" style="max-height: 80px"></td>
        <td><?= $row['TENFILM'] ?></td>
		<td><?= $row['TENQUOCGIA'] ?></td>
		
		
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