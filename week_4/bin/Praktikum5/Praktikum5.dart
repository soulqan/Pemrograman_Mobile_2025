void main() {

  var record = ('first', a: 2, b: true, 'last');
  print('Record campuran: $record');

  var angka = (10, 20);
  print('Sebelum tukar: $angka');

  var hasil = tukar(angka);
  print('Sesudah tukar: $hasil');

  (String, int) mahasiswa=('Soultan Mohammad Agnar Bisyarah', 234170191);
print(mahasiswa);

  var mahasiswa2 = ('Soultan Mohammad Agnar Bisyarah', a: 2341720191, b: true, 'Mahasiswa');

  print(mahasiswa2.$1); 
  print(mahasiswa2.a);  
  print(mahasiswa2.b); 
  print(mahasiswa2.$2); 

}


(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
