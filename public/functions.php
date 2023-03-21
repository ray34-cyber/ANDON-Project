<?php

// koneksi database
$conn = mysqli_connect("localhost", "root", "", "test_andon");


function query($query) {
    global $conn;
    $result = mysqli_query($conn, $query);
    $datas = [];
    while($data = mysqli_fetch_assoc($result)) {
        $datas[] = $data;
    }
    return $datas;
}

function updateTIme($datetime) {
    $now = time();
    $timestamp = strtotime($datetime);
    $selisih = $now - $timestamp;
    $menit = floor(($selisih)/60);
    $detik = $selisih%60;
    $hasil = $menit . ":" . str_pad($detik, 2 , "0", STR_PAD_LEFT);
    return $hasil;
}

?>
