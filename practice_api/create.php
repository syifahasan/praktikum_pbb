<?php
function dbconnection(){
  $con = mysqli_connect('localhost', 'root', '', 'crudflutter');
  return $con;
}
$con = dbconnection();
$nisn = $_POST["nisn"];
$nama = $_POST["nama"];
$alamat = $_POST["alamat"];

$data = mysqli_query($con, "INSERT INTO siswa SET nisn='$nisn', nama='$nama', alamat='$alamat' ");

if ($data){
  echo json_encode([
    'pesan' => 'Sukses'
  ]);
}else{
  echo json_encode([
    'pesan' => 'Gagal'
  ]);
}
?>