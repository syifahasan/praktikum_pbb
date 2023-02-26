void main() {
  String name = "attin rohmayani";
  bool isMale = false;
  double age = -18.6;
  List<String> favColor = ["Red", "Blue", "Green", "Yellow"];
  Map vehicle = {"motor" : "Mio", "mobil" : "Toyota"};


  print("$name adalah laki - laki? $isMale");
  print("dia berumur ${age.abs()} tahun"); //absolute membuat negatif menjadi positif
  print(age.ceil()); // pembulatan angka ke atas atau tidak lebih rendah dari value
  print(age.floor()); // pembuat angka ke bawah atau tidak leih besar dari value

  print("Pilih Warna favorit pertama : ${favColor[0]}");
  print("Nama motor : ${vehicle["motor"]}");

}