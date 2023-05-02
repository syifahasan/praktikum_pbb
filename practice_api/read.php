<?php
  function dbconnection(){
    $con = mysqli_connect('localhost', 'root', '', 'crudflutter');
    return $con;
  }
  $conn = dbconnection();
  $query = mysqli_query($conn, 'select * from siswa');

  $data = mysqli_fetch_all($query,MYSQLI_ASSOC);
  echo json_encode($data);
?>