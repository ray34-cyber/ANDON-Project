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


?>
