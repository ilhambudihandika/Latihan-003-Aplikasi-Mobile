int hitungHarga(String jenis) {
  if (jenis == "plastik") {
    return 4500;
  } else if (jenis == "kertas") {
    return 3500;
  } else if (jenis == "logam") {
    return 9000;
  }
  return 0;
}

int hitungSetoran(String jenis, int berat) {
  if (berat <= 0) {
    return 0;
  }
  return hitungHarga(jenis) * berat;
}

int tambahSaldo(int saldo, int nilaiSetoran) {
  return saldo + nilaiSetoran;
}

int tarikSaldo(int saldo, int jumlah) {
  if (jumlah < 10000 || jumlah > saldo) {
    return saldo;
  }
  return saldo - jumlah;
}

void main() {
  int saldo = 0;
  int nilaiSetoran;

  nilaiSetoran = hitungSetoran("plastik", 2);
  saldo = tambahSaldo(saldo, nilaiSetoran);
  print("Skenario 1 - Saldo: Rp$saldo");

  nilaiSetoran = hitungSetoran("kertas", 3);
  saldo = tambahSaldo(0, nilaiSetoran);
  print("Skenario 2 - Saldo: Rp$saldo");

  nilaiSetoran = hitungSetoran("logam", 2);
  saldo = tambahSaldo(0, nilaiSetoran);
  print("Skenario 3 - Saldo: Rp$saldo");

  saldo = tarikSaldo(50000, 20000);
  print("Skenario 4 - Saldo akhir: Rp$saldo");

  saldo = tarikSaldo(50000, 5000);
  print("Skenario 5 - Saldo akhir: Rp$saldo");

  saldo = tarikSaldo(20000, 30000);
  print("Skenario 6 - Saldo akhir: Rp$saldo");

  nilaiSetoran = hitungSetoran("plastik", 0);
  print("Skenario 7 - Nilai setoran: Rp$nilaiSetoran");

  nilaiSetoran = hitungSetoran("kayu", 2);
  print("Skenario 8 - Nilai setoran: Rp$nilaiSetoran");
}