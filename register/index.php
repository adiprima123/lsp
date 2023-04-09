<?php 

require 'process.php';

if(isset($_POST["tambahUser"])){
    if(tambahUser($_POST) >0 ){
        echo '
        <script type="text/javascript">
        alert("register berhasil, silahkan login")
        window.location = "../login/index.php"
        </script>
        ';
    
    }else{
        echo '
        <script type="text/javascript">
        alert("register gagal silahkan coba lagi")
        window.location = "index.php"
        </script>
        ';
    }
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div class="container">
        <div class="login">
            <form action="" method="post">
                <h1>Register</h1>
                <hr>
                <i><p>Ez Laptop</p></i>
                <input type="hidden" name="id_user" id="id_user" class="form-control"><br /> <br />
                    <label for="username">Username</label><br />
                    <input type="text" name="username" id="username" class="form-control" placeholder="Masukkan Username Baru"><br /> <br />

                    <label for="name">Nama</label><br />
                    <input type="text" name="name" id="name" class="form-control" placeholder="Masukkan Nama"><br /> <br />

                    <label for="password">Password</label><br />
                    <input type="password" name="password" id="password" class="form-control" placeholder="Masukkan Password Baru"><br /> <br />

                    <p><input type='radio' name='roles' value='Customer' class="form-control" checked='checked' />Customer</p>

                    <button type="submit" name="tambahUser">Register</button>
                    <p><a href="../index.php">Kembali!</a></p>
                </form>
        </div>
    </div>
</body>

</html>

