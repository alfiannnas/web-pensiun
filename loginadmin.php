<?php

include "./database.php";

session_start();



if($koneksi===false)
{
	die("connection error");
}

if($_SERVER["REQUEST_METHOD"]=="POST")
{
	$username=mysqli_real_escape_string($koneksi, $_POST["username"]);
	$password=mysqli_real_escape_string($koneksi, $_POST["password"]);

    // menyeleksi data pada tabel admin dengan username dan password yang sesuai
    $data = mysqli_query($koneksi, "SELECT * FROM `users` WHERE username='$username' AND password='$password'");

    // menghitung jumlah data yang ditemukan
    $cek = mysqli_num_rows($data);

    if($cek > 0){
        $_SESSION['username'] = $username;
        header("location:admin.php");
    }
    else{
        header("location:loginadmin.php?pesan=gagal");
    }
}

?>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login User</title>
    <link rel="icon" href="logo.png" type="image/x-icon" />
    <link rel="stylesheet" href="style-login.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous" />
  </head>
  <body class="bg-image-login">
    <div class="position-logo" id="bg">
      <img src="img/LOGO KARTA YP.png" alt="Logo Sistem Informasi!" width="125" />
    </div>
    <div class="radius">
      <div class="container-judul mb-5" style="max-width: 900px">
        <div class="judul-sikap">Sistem Informasi Pensiun</div>
        <div class="judul-deskripsi mt-3">"Nikmati Momen-Momen Bahagia di Masa Pensiunmu"</div>
      </div>
      <div class="wrap-login100" style="margin-top: 75px">
      <form method="post" class="">
    <div class="mb-3">
        <input type="text" class="form-control" id="username" name="username" aria-describedby="emailHelp" placeholder="Username" />
    </div>
    <div class="mb-3">
        <input type="password" class="form-control" id="password" name="password" placeholder="Password" />
    </div>
    <div class="text-center">
        <button type="submit" class="btn btn-primary px-5 mb-5 w-100">LOGIN</button>
    </div>
</form>
      </div>
    </div>
  </body>
</html>
