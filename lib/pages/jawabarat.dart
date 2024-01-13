// jawatengah.dart
import 'package:flutter/material.dart';
import 'wisata.dart';

class JawaBaratPage extends StatelessWidget {
  final List<Wisata> wisataList = [
    Wisata(
        nama: 'Paris Van Java',
        deskripsi:
            'Paris van Java (PVJ) adalah sebuah mal yang terletak di daerah Sukajadi. Letaknya yang berdekatan dengan Tol Pasteur dan Stasiun Bandung membuat mal ini banyak dikunjungi oleh wisatawan luar kota..',
        imagePath: 'assets/images/parjava.jpg',
        lokasi: 'Bandung'),
    Wisata(
        nama: 'Cihampelas Walk',
        deskripsi:
            'Kehadiran "Cihampelas Walk" di tengah-tengah kota Bandung, mal dengan konsep baru, menawarkan sesuatu yang berbeda dari mal lain di Indonesia. Nuansa berbeda dari mal - mal yang lain akan terasa mulai dari gerbang kita masuk Cihampelas Walk hingga ke bagian dalam..',
        imagePath: 'assets/images/cihampelas.jpg',
        lokasi: 'Bandung'),
    // Tambahkan wisata lain sesuai kebutuhan
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Jawa Barat'),
      ),
      body: ListView.builder(
        itemCount: wisataList.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Image.asset(
                wisataList[index].imagePath,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(wisataList[index].nama),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    wisataList[index].lokasi,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
              onTap: () {
                // Pindah ke halaman detail ketika item list di-tap
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailPage(wisata: wisataList[index]),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final Wisata wisata;

  DetailPage({required this.wisata});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Wisata - ${wisata.nama}'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            wisata.imagePath,
            width: MediaQuery.of(context).size.width,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              '${wisata.nama}',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(wisata.deskripsi),
          ),
        ],
      ),
    );
  }
}
