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

# Praktikum 2
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

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
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
              count();
              // setState(() {});
              // getData()
              //     .then((value) {
              //   result = value.body.toString().substring(0, 450);
              //   setState(() {});
              // })
              // .catchError((_) {
              //   result = 'An error occurred';
              //   setState(() {});
              // });
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

Soal 4

Tujuan dari fungsi return...Async adalah untuk mensimulasikan tiga pekerjaan terpisah yang masing-masing membutuhkan waktu 3 detik.

Tujuan dari fungsi count() adalah untuk menunjukkan bagaimana await memaksa pekerjaan-pekerjaan tersebut berjalan secara berurutan (sekuensial):

- Tunggu 3 detik untuk returnOneAsync().

- Lalu, tunggu 3 detik lagi untuk returnTwoAsync().

- Lalu, tunggu 3 detik lagi untuk returnThreeAsync().

<img src="img/soal4_2.gif" alt="Demo Photo Filter" width="300">

Hasilnya, fungsi count() membutuhkan total 9 detik untuk selesai, lalu menampilkan hasil penjumlahannya ("6") di layar.

# Praktikum 3
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
  late Completer completer;

  Future getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  Future calculate() async {
    await Future.delayed(const Duration(seconds : 5));
    completer.complete(42);
  }
  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    // ID buku 'junbDwAAQBAJ' adalah ID dari jobsheet
    const path = '/books/v1/volumes/LKLbDwAAQBAJ'; 
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
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
            onPressed: () {
              getNumber().then((value) {
                setState(() {
                  result = value.toString();
                });
              }).catchError((_) {
                setState(() {
                  result = 'An error occurred';
                });
              });
            },
            child: const Text('GO!'),
          ),
          const Spacer(),
          Text(result),
          const Spacer(),
          const CircularProgressIndicator(),
        ]),
      ),
    );
  }
}
```

Soal 5
```
late Completer completer;

Future getNumber() {
  completer = Completer<int>();
  calculate();
  return completer.future;
}

Future calculate() async {
  await Future.delayed(const Duration(seconds : 5));
  completer.complete(42);
}
```
Kode itu membuat Future manual dengan Completer.

- getNumber() membuat Completer<int>(), memanggil calculate(), lalu mengembalikan Future dari completer.

- calculate() menunggu 5 detik lalu memanggil completer.complete(42) → menandakan Future selesai dan hasilnya 42.

<img src="img/soal5_3.gif" alt="Demo Photo Filter" width="300">