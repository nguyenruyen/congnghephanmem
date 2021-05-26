<?php
session_start();
if (!isset($_SESSION['isLoggedIn']))
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


<div class="container" style="width: 600px">
    <h2>Thêm Phim</h2>
    <form  action="addphim.php" method="POST" enctype="multipart/form-data" ">
        <div class="form-group">
            <label for="name">Tên phim:</label>
            <input type="text" class="form-control" id="name" placeholder="Nhập tên phim" name="name" required>
        </div>
		<div class="form-group">
			<label for="sel1">Thể loại: </label>
			<select class="form-control" id="type" name = "type" required>
				<option> </option>
				<option value = "1">Phim hành động</option>
				<option value = "2">Phim hài</option>
				<option value = "3">Phim kinh dị</option>
				<option value = "4">Phim tình cảm</option>
				<option value = "5">Phim hoạt hình</option>
			</select>
		</div>
		
		<div class="form-group">
			<label for="sel1">Quốc gia: </label>
			<select class="form-control" id="country" name = "country" required>
				<option> </option>
				<option value = "1">Việt Nam</option>
				<option value = "2">Mỹ</option>
				<option value = "3">Trung Quốc</option>
				<option value = "4">Nhật Bản</option>
				<option value = "5">Hàn Quốc</option>
				<option value = "6">Hồng Kông</option>
			</select>
			
		</div>
		<div class="form-group">
            <label for="name">Đạo diễn:</label>
            <input type="text" class="form-control" id="directors" placeholder="Nhập tên đạo diễn" name="directors" required>
        </div>
		<div class="form-group">
            <label for="name">Diễn viên:</label>
            <input type="text" class="form-control" id="actor" placeholder="Nhập tên diễn viên" name="actor" required>
        </div>
		<div class="form-group">
            <label for="name">Thời lượng:</label>
            <input type="text" class="form-control" maxlength="6" id="time" placeholder="Nhập thời lượng (vd 2h30p = 23000)" name="time" required>
        </div>
		<div class="form-group">
            <label for="name">Số rating:</label>
            <input type="text" class="form-control" maxlength="1" id="rate" placeholder="Nhập số rating tối đa là 5" name="rate" required>
        </div>
        <div class="form-group">
            <label for="price">Năm sản xuất:</label>
            <input type="text" class="form-control" maxlength="4" id="year" placeholder="Nhập năm" name="year" required>
        </div>
		<div class="form-group">
            <label for="description">Mô tả:</label>
            <textarea class="form-control" id="description" placeholder="Nhập mô tả" name="description" required></textarea>
        </div>
		<div class="form-group">
            <label for="name">Link phim:</label>
            <input type="text" class="form-control" id="link" placeholder="Nhập link phim" name="link" required>
        </div>
		<div class="form-group">
            <label for="name">ID link trailer:</label>
            <input type="text" class="form-control" id="trailer" value= "https://www.youtube.com/embed/" name="trailer" required>
        </div>
		<div class="form-group">
            <label for="fileUpload">Hình:</label>
            <input type="file" class="form-control" id="fileUpload" name="fileUpload" required></textarea>
        </div>
		
        <button type="submit" class="btn btn-primary btn-lg btn-block">Thêm</button>
    </form>

    <br>
	<a href="logout.php"<button  type="button" class="btn btn-primary btn-lg btn-block">Đăng xuất </a></button>

</div>


</body>
</html>