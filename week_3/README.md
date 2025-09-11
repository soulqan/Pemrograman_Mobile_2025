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