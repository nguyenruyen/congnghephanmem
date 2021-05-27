<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Đăng nhập Admin</title>

    <!-- Bootstrap core CSS -->
    <!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet"> -->

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
	<style>
	html,
	body {
	  height: 100%;
	}

	body {
	  display: -ms-flexbox;
	  display: -webkit-box;
	  display: flex;
	  -ms-flex-align: center;
	  -ms-flex-pack: center;
	  -webkit-box-align: center;
	  align-items: center;
	  -webkit-box-pack: center;
	  justify-content: center;
	  padding-top: 40px;
	  padding-bottom: 40px;
	  background-color: #f5f5f5;
	}

	.form-signin {
	  width: 100%;
	  max-width: 330px;
	  padding: 15px;
	  margin: 0 auto;
	}
	.form-signin .checkbox {
	  font-weight: 400;
	}
	.form-signin .form-control {
	  position: relative;
	  box-sizing: border-box;
	  height: auto;
	  padding: 10px;
	  font-size: 16px;
	}
	.form-signin .form-control:focus {
	  z-index: 2;
	}
	.form-signin input[type="email"] {
	  margin-bottom: -1px;
	  border-bottom-right-radius: 0;
	  border-bottom-left-radius: 0;
	}
	.form-signin input[type="password"] {
	  margin-bottom: 10px;
	  border-top-left-radius: 0;
	  border-top-right-radius: 0;
	}
	</style>
  </head>

  <body class="text-center">
    <form action="" method="POST" class="form-signin">
      <h1 class="h3 mb-3 font-weight-normal">Đăng nhập dành cho Admin</h1>
      <label for="inputEmail" class="sr-only">Email address</label>
      
	  <input name="username" type="text" id="inputEmail" class="form-control" placeholder="Username" required autofocus>
      
	  <label for="inputPassword" class="sr-only">Password</label>
      
	  <input name="password" type="password" id="inputPassword" class="form-control" placeholder="Password" required>
      <?php
		session_start();// bắt đầu phiên.
		if (isset($_POST['username']) && isset($_POST['password'])) {// kiểm tra tồn tại username và password từ form gửi lên.
			require_once("conn.php");// kết nối với database
			
			$username = $_POST['username'];// lấy username từ form
			
			$sql = "SELECT * FROM admin WHERE username = '$username'";// lấy thông tin người dùng từ bảng admin với điều kiện (where) với cột username.
			$result = $conn->query($sql);// thực thi câu lệnh sql
			$row = $result->fetch_assoc();// lây toàn bộ dữ liệu, dưới một mảng (fetch_assoc ==> Array ( [username] => congnam [password] => nam4101999)).
			
			if ($_POST['password'] == $row['password']) {// neu mà password ở dòng 78 mà = với dòng 88,
				$_SESSION['isLoggedIn'] = true; // thi session sẽ lưu một giá trị là true(được phép đăng nhập), 
				header("Location: quanliphim.php");// và chuyển trang quan ly phim
			} else {
				echo "<div class='alert alert-danger'> Sai username hoặc password </div>";// nếu mà dòng 78 != dòng 88 thì xuất thông báo lỗi 
			}
		}
		?>
	  <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng nhập</button>
     
    </form>
	
	
  </body>
</html>
