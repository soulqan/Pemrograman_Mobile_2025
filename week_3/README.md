NAMA : Soultan Mohammad Agnar Bisyarah
NIM : 2341720191
Kelas : TI-3H

# Praktikum 1
Langkah 1

```
void main() {
  String test = "test2";
  if (test == "test1") {
    print("Test1");
  } else if (test == "test2") {
    print("Test2");
  } else {
    print("Something else");
  }

  if (test == "test2") print("Test2 again");
}
```
![Foto Profil](img/Praktikum1/langkah%201.png)

Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
Jawaban: yang terjadi adalah apabila variabel test itu mempunnyai sebuah nilai string yaitu test2 maka akan di print test2. Jadi disitu ada if-else untuk pengecekan apakah value dari variabel test itu sesuai dengan sebuah kondisi if-else

Langkah 3
Before
```
String test = "true";
if (test) {
   print("Kebenaran");
}
```

After
```
void main() {
  String test = "true";
  if (test=="true") {
    print("Kebenaran");
  }
}
```
eror karena tidak ditambahkan sebuah == "true"
![Foto Profil](img/Praktikum1/langkah%203.png)


# Praktikum 2
Langkah 1
```
void main(){
  while (counter < 33) {
  print(counter);
  counter++;
} 
}
```
![Foto Profil](img/Praktikum2/langkah%202.1.png)

Langkah 2
Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.
Jawaban: Eror dikarenakan counter belum di definisikan.

Langkah 3
```
void main(){
int counter = 32;
do {
  print(counter);
  counter++;
} while (counter < 77);

}
```
![Foto Profil](img/Praktikum2/langkah%202.3.png)
yang terjadi adalah perulangan akan selalu dilakukan selama counter itu mempunyai nilai dibawah 77 dan nilai counter akan terus bertambah karena counter++

# Praktikum 3
Langkah 1
```
void main(){
  for (index = 10; index < 27; index) {
  print(index);
}
}
```
![Foto Profil](img/Praktikum3/langkah%203.1.png)

Langkah 2
Eror dikarenakan variabel index belum ada tipe data nya dan infinite loop dikarenakn tidak ada index++
```
void main(){
  for (int index = 10; index < 27; index++) {
  print(index);
}
}
```
Langkah 3
Eror dikarenakan salah penulisan if-else dan jika index == 21 maka program akan berhenti
Before
```
void main(){
  for (int index = 10; index < 27; index++) {
  print(index);
  If (Index == 21) break;
Else If (index > 1 || index < 7) continue;
print(index);
}
}
```
After
```
void main(){
  for (int index = 10; index < 27; index++) {
  print(index);
  if (index == 21) break;
  else if (index > 1 || index < 7) continue;
  print(index);
}
}
```
![Foto Profil](img/Praktikum3/langkah%203.3.png)

# Tugas
Buatlah sebuah program yang dapat menampilkan bilangan prima dari angka 0 sampai 201 menggunakan Dart. Ketika bilangan prima ditemukan, maka tampilkan nama lengkap dan NIM Anda.
```
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
```
![Foto Profil](img/Tugas/tugas1.png)
![Foto Profil](img/Tugas/tugas2.png)
![Foto Profil](img/Tugas/tugas3.png)
![Foto Profil](img/Tugas/tugas4.png)