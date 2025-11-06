# Praktikum 1

Soal 1

```
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soultan Mohammad Agnar Bisyarah',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}
```

Soal 2 

Mencari judul buku favorit:
<img src="img/soal2_1_1.png" alt="Demo Photo Filter" width="600">

Mencoba akses di browser
<img src="img/soal2_1_2.png" alt="Demo Photo Filter" width="600">

Soal 3

- .catchError((_) {}) berfungsi untuk error handler dan dipanggil saat Future gagal/error
- .substring(0, 450) Berfungsi untuk string function dan digunakan unruk Memotong teks hanya 450 karakter pertama

```
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soultan Mohammad Agnar Bisyarah',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';

  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    // ID buku 'junbDwAAQBAJ' adalah ID dari jobsheet
    const path = '/books/v1/volumes/LKLbDwAAQBAJ'; 
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future Soultan'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: Text('GO!'),
            onPressed: () {
              setState(() {});
              getData()
                  .then((value) {
                result = value.body.toString().substring(0, 450);
                setState(() {});
              }).catchError((_) {
                result = 'An error occurred';
                setState(() {});
              });
            },
          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
          const Spacer(),
        ]),
      ),
    );
  }
}
```

<img src="img/soal3_1_1.png" alt="Demo Photo Filter" width="300">