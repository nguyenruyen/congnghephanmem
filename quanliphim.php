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

		<center><h1><a href="quanliphim.php">QU???N L?? PHIM</a></h1></center>
<table cellpadding="10" cellspacing="10" border="0" style="border-collapse: collapse; margin: auto">
		
		<ul class="nav nav-pills">
		  <li class="nav-item">
			<a class="nav-link active" href="add.php">Th??m phim</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link " href="index.php">Trang ch???</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanliphim.php">T???t c???</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanlitheloai.php">Th??? lo???i</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanliquocgia.php">Qu???c gia</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanliuser.php">User</a>
		  </li>
		  <li class="nav-item">
			<a class="nav-link" href="quanlicomment.php">B??nh Lu???n</a>
		  </li>
		</ul>
    <tr class="header">
        <td>H??nh</td>
        <td>T??n phim</td>
		<td>?????o di???n</td>
		<td>di???n vi??n</td>
		<td>Th???i l?????ng</td>
		<td>N??m s???n xu???t</td>
		<td>S??? rating</td>
		<td>M?? t???</td>
		<td>Link phim</td>
		<td>Link trailer</td>
		
    </tr>
	<?php 
	require_once('conn.php');
	$sql = "SELECT * FROM film";
		  
	$result = $conn->query($sql);
	if ($result->num_rows > 0) {
		while ($row = $result->fetch_assoc()) {
	?>
    <tr class="item">
        <td><img src="<?= $row['HINH'] ?>" style="max-height: 80px"></td>
        <td><?= $row['TENFILM'] ?></td>
		<td><?= $row['DAODIEN'] ?></td>
		<td><textarea rows="5" cols="15"><?= $row['DIENVIEN'] ?></textarea></td>
		<td><?= $row['THOILUONG'] ?></td>
        <td><?= $row['NAMSX'] ?></td>
		<td><?= $row['SORATING'] ?></td>
		<td><textarea rows="4" cols="20"><?= $row['THONGTIN'] ?> </textarea></td>
		<td><textarea rows="2" cols="10"><?= $row['LINKFILM'] ?> </textarea></td>
		<td><textarea rows="2" cols="10"><?= $row['LINKTRAILER'] ?></textarea></td>
		
        <td> <a href="deletephim.php?id=<?= $row['IDFILM']?>" class="delete">X??a</a></td>
		
    </tr>
	<?php }
	}?>
    <tr class="control" style="text-align: right; font-weight: bold; font-size: 17px">
        <td colspan="5">
            <p>T???ng phim: <?= $result->num_rows ?></p>
        </td>
    </tr>
</table>
<br>
	<a href="logout.php"<button  type="button" class="btn btn-primary btn-lg btn-block">????ng xu???t </a></button>

	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>
</html>