<?php
require 'functions.php';

session_start();

if (!isset($_SESSION["username"])) {
    echo "
    <script type='text/javascript'>
        alert('Silahkan login terlebih dahulu')
        window.location = '../login/index.php';
    </script>
    ";
}

if ($_SESSION["roles"] != "Admin") {
    echo "
    <script type='text/javascript'>
        alert('Mohon maaf anda bukan admin, enggak bisa masuk kesini!')
        window.location = '../login/index.php';
    </script>
    ";
}


$user = query("SELECT * FROM user");

?>

<?php require '../layout/sidebar.php'; ?>
<div id="main">
    <?php require '../layout/navbar-admin.php'; ?>
<div class="content">
    <h1>Data User</h1>
    <br>
    <link rel="stylesheet" type="text/css" href="../assets/css/table-user.css">
    <a class="btn btn-success my-2" href="tambah_user.php">Tambah</a>
    <table class="tabel1">
        <tr>
            <th>No.</th>
            <th>Nama Lengkap</th>
            <th>Username</th>
            <th>Roles</th>
            <th>Aksi</th>
        </tr>

        <?php $i = 1; ?>
        <?php foreach ($user as $data) : ?>
            <tr>
                <td><?= $i; ?></td>
                <td><?= $data["nama_lengkap"]; ?></td>
                <td><?= $data["username"]; ?></td>
                <td><?= $data["roles"]; ?></td>
                <td>
                    <a class="text-primary me-2" href="edit_user.php?id=<?= $data["id_user"]; ?>"><i class="fa-solid fa-pen"></i></a>
                    <a class="text-danger" href="hapus_user.php?id=<?= $data["id_user"]; ?>" onclick="return confirm('Apakah anda yakin ingin menghapus data?');"><i class="fa-solid fa-trash"></i></a>
                </td>
            </tr>
            <?php $i++; ?>
        <?php endforeach; ?>
    </table>
</div>
</div>
<?php require '../layout/footer-admin.php'; ?>