<?php 
session_start();

$id = $_GET["id"];
unset($_SESSION["cart"][$id]);

echo " 
    <script type='text/javascript'>
        alert('Produk Telah Dihapus');
        window.location = 'index.php;
    </script>
";

if(isset($_SESSION["cart"])< 0 ){

}
?>