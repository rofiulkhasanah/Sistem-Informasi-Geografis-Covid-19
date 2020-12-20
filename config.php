<?php

$host ="localhost";
$uname = "root";
$pass = "";
$db = "db_webgis";

$con = mysqli_connect($host, $uname, $pass, $db);

if (mysqli_connect_error()) {
    echo 'Koneksi database gagal : '.mysqli_connect_error();
}
