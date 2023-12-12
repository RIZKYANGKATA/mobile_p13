Nama : Rizky Angkata Putra S.

No. Absen : 24

Kelas : TI-3A

NIM : 214172023

MOBILE ASYNCHRONOUS P13

PRAKTIKUM 1

Langkah 1: Buat Project Baru 

Buatlah sebuah project flutter baru dengan nama books di folder src week-12 repository GitHub Anda. Kemudian Tambahkan dependensi http dengan mengetik perintah berikut di terminal.

```
flutter pub add http
```

Langkah 2: Cek file pubspec.yaml

Jika berhasil install plugin, pastikan plugin http telah ada di file pubspec ini seperti berikut.

```
dependencies:
  flutter:
    sdk: flutter
  http: ^1.1.0
```

Langkah 3: Buka file main.dart

Ketiklah kode seperti berikut ini.

**Soal 1**

*Tambahkan nama panggilan Anda pada title app sebagai identitas hasil pekerjaan Anda.*


```
import 'dart:async';
import 'package:async/async.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rizky Angkata Putra S.',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FuturePage(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePage();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Back from the Future'),
      ),
      body: Center(
        child: Column(children: [
          const Spacer(),
          ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {},
       
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

Langkah 4: Tambah method getData()

Tambahkan method ini ke dalam class _FuturePageState yang berguna untuk mengambil data dari API Google Books.

```
Future<Response> getData() async{
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/junbDwAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }
```

**Soal 2**

*Carilah judul buku favorit Anda di Google Books, lalu ganti ID buku pada variabel path di kode tersebut. Caranya ambil di URL browser Anda.*

Langkah 5: Tambah kode di ElevatedButton

Tambahkan kode pada onPressed di ElevatedButton seperti berikut.

```
ElevatedButton(
            child: const Text('GO!'),
            onPressed: () {
              setState(( {});
              getData()
              .then((value) {
                result = value.body.toString().substring(0, 450);
                setState(() {});
              }).catchError((_){
                  result = 'An error occurred';
                  setState(() {});
              });
            },
          ),
```

Lakukan run aplikasi Flutter Anda. Anda akan melihat tampilan akhir seperti gambar berikut. Jika masih terdapat error, silakan diperbaiki hingga bisa running.

**Soal 3**![Uploading Cuplikan layar 2023-12-10 000552.png…]()


- *Jelaskan maksud kode langkah 5 tersebut terkait substring dan catchError!*
- *Capture hasil praktikum Anda berupa GIF dan lampirkan di README. Lalu lakukan commit dengan pesan "W12: Soal 3".*

Hasil : 













