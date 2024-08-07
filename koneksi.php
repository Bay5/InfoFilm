<?php
$host = "localhost"; 
$username = "root"; 
$password = ""; 
$database = "info_film"; 

// Membuat koneksi
$conn = new mysqli($host, $username, $password, $database);

// Memeriksa koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>
