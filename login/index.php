<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="style3.css">
</head>

<body>
    <div class="container">
        <div class="login">
            <form action="process.php" method="post">
                <h1>Login</h1>
                <hr>
                <i><p>Ez Laptop</p></i>
                    <label for="username">Username</label><br />
                    <input type="text" name="username" id="username" class="form-control"><br /> <br />

                    <label for="password">Password</label><br />
                    <input type="password" name="password" id="password" class="form-control"><br /> <br />

                    <button type="submit">Log in</button>
                    <p>Belum punya akun? daftar <a href="../register/index.php">disini</a></p>
                    <p><a href="../index.php">Kembali!</a></p>
                </form>
        </div>
        <div class="right">
            <img src="undraw_Co_workers_re_1i6i.png" alt="">
        </div>
    </div>
</body>

</html>