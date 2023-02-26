void main() {
  int hasilPenjumlahan = penjumlahan(1, 7, 8);
  hasilPenjumlahan = hasilPenjumlahan + 2;
  print("hasil diluar function: $hasilPenjumlahan");
  
  pengurangan(1, 7);
}

int penjumlahan(int x, int y, int z){
  int hasil = x + y + z;
  print("hasil didalam function: $hasil");
  return hasil;
}

void pengurangan(int x, int y){
  print(x-y);
}