<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Đăng nhập Admin</title>

    <!-- Bootstrap core CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="signin.css" rel="stylesheet">
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
		session_start();
		if (isset($_POST['username']) && isset($_POST['password'])) {
			require_once("conn.php");
			
			$username = $_POST['username'];
			
			$sql = "SELECT * FROM admin WHERE username = '$username'";
			$result = $conn->query($sql);
			$row = $result->fetch_assoc();
			
			if ($_POST['password'] == $row['password']) {
				$_SESSION['isLoggedIn'] = true;
				header("Location: quanliphim.php");
			} else {
				echo "<div class='alert alert-danger'> Sai username hoặc password </div>";
			}
		}
		?>
	  <button class="btn btn-lg btn-primary btn-block" type="submit">Đăng nhập</button>
      <p class="mt-5 mb-3 text-muted">Thiện Trung & Công Nam</p>
    </form>
	
	
  </body>
</html>
