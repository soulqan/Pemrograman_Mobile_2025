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