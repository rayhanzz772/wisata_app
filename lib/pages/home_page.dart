// main.dart
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_flutter_app/components/my_button.dart';
import 'package:login_flutter_app/pages/jawabarat.dart';
import 'package:login_flutter_app/pages/jawatimur.dart';
import 'package:login_flutter_app/pages/log_in_page.dart';
import 'jawatengah.dart'; // Import file jawatengah.dart

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Indonesia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<String> provinsiList = [
    'Jawa Barat',
    'Jawa Tengah',
    'Jawa Timur',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Indonesia'),
        actions: [
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();

              // ignore: use_build_context_synchronously
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: provinsiList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(provinsiList[index]),
            onTap: () {
              // Tambahkan aksi yang diinginkan saat item list di-tap
              // Misalnya, pindah ke halaman detail wisata provinsi tersebut
              if (provinsiList[index] == 'Jawa Tengah') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JawaTengahPage(),
                  ),
                );
              } else if (provinsiList[index] == 'Jawa Barat') {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JawaBaratPage(),
                  ),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => JawaTimurPage(),
                  ),
                );
              }
            },
          );
        },
      ),
    );
  }
}
