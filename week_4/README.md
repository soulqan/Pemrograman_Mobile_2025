Nama : Soultan Mohammad Agnar Bisyarah
Kelas : TI-3H
NIM : 2341720191

#Praktikum 1

Langkah 1
```
void main (){
  var list = [1, 2, 3];
    assert(list.length == 3);
    assert(list[1] == 2);
      print(list.length);
      print(list[1]);

    list[1] = 1;
    assert(list[1] == 1);
      print(list[1]);

}
```
![Foto Profil](img/photo1.png)
Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan!
Jawaban: Yang terjadi adalah program akan menampilkan angka 3 2 1 , pada program tersebut dilakukan pengecekan beberapa kali  menggunakan perintah assert

Lngkah 3
Ubah kode pada langkah 1 menjadi variabel final yang mempunyai index = 5 dengan default value = null. Isilah nama dan NIM Anda pada elemen index ke-1 dan ke-2. Lalu print dan capture hasilnya.

Apa yang terjadi ? Jika terjadi error, silakan perbaiki.
Jawaban: nama dan nim akan di print pada indeks ke 1 dan 2, indeks lain yang tidak memiliki isi maka akan tertulis null
```
void main() {

  final List<String?> list = List.filled(5, null);

  list[1] = "Soultan Mohammad Agnar Bisyarah"; 
  list[2] = "234170191"; 


  print(list);
}

```
![Foto Profil](img/photo2.png)