# Praktikum 1

Soal 1

```dart
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Soultan', //Stream nama
      theme: ThemeData(
        primarySwatch: Colors.lightBlue, // warna kesukaan
      ),
      home: const StreamHomePage(),
    );
  }
```

Soal 2

```dart
import 'package:flutter/material.dart';

class ColorStream {
  final List<Color> colors = [
  Colors.blueGrey,
  Colors.amber,
  Colors.deepPurple,
  Colors.lightBlue,
  Colors.teal,
  //tambahan warna baru
  Colors.green,
  Colors.blueAccent,
  Colors.pinkAccent,
  Colors.orangeAccent,
  Colors.purpleAccent
];
}
```

Soal 3
1. yield* digunakan untuk meneruskan/mengeluarkan seluruh event (data) dari satu Stream ke Stream lainnya.

yield* Stream.periodic(...) mengambil semua data yang dihasilkan Stream.periodic dan menjadikannya output dari getColorStream().

2. Apa maksud isi perintah kode tersebut?

```dart
Stream<Color> getColorStream() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t) {
        int index = t % colors.length;
        return colors[index];
    });
  }
```
Kode tersebut membuat sebuah Stream yang mengeluarkan satu warna dari list colors setiap 1 detik secara berurutan dan berulang tanpa henti.