Nama : Soultan Mohammad Agnar Bisyarah
Kelas : TI-3H
NIM : 2341720191

# Praktikum 1

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

Langkah 3

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

# Praktikum 2
 
Langkah 1

```
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}
```
![Foto Profil](img/photo3.png)

Langkah 2

Silakan coba eksekusi (Run) kode pada langkah 1 tersebut. Apa yang terjadi? Jelaskan! Lalu perbaiki jika terjadi error.

Jawaban: Tidak ada eror, dapa yang di print bukan sebuah list melainkan set


Langkah 3
```
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
    Set<String> names2 = {}; // This works, too.
    var names3 = {}; // Creates a map, not a set.

    print(names1);
    print(names2);
    print(names3);
}

```
Hasilnya berupa {} dan tidak ada isi nya


```
void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {};

  names1.add("Soultan Mohammad Agnar Bisyarah"); 
  names1.add("234170191"); 

  names2.addAll({"Soultan Mohammad Agnar Bisyarah", "234170191"}); 

  print(names1);
  print(names2);
}
```

![Foto Profil](img/photo4.png)

Jawaban:
names1 berhasil ditambah elemen dengan .add(), names2 berhasil ditambah elemen dengan .addAll(), dan keduanya menampilkan isi Set berisi nama serta NIM (tanpa duplikat).

