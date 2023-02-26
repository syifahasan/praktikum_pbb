void main() {
  print("A");
  cetak().then((data) => print(data)).catchError((err)=>print(err));
  print("C");
}

Future<String> cetak() async{
  await Future.delayed(Duration(seconds: 2));

  print("B");
  print("Sukses");
  return "Berhasil Cetak B";
}