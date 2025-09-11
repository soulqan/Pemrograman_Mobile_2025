void main() {
  String nama = "Soultan Mohammad Agnar Bisyarah"; 
  String nim = "2341720191";          

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print("$i → $nama ($nim)");
    } else {
      print("$i");
    }
  }
}

bool isPrima(int n) {
  if (n < 2) return false;
  for (int i = 2; i * i <= n; i++) {
    if (n % i == 0) return false;
  }
  return true;
}
