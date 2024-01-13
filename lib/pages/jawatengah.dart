// jawatengah.dart
import 'package:flutter/material.dart';
import 'wisata.dart';

class JawaTengahPage extends StatelessWidget {
  final List<Wisata> wisataList = [
    Wisata(
        nama: 'Guci Tegal',
        deskripsi:
            'Potret Wisata Guci ini terletak di kaki Gunung Slamet dengan ketinggian kurang lebih 1.050 meter di atas permukaan laut dan berbatasan dengan Kabupaten Brebes dan juga Pemalang.',
        imagePath: 'assets/images/wisata.jpg',
        lokasi: 'Tegal'),
    Wisata(
        nama: 'Pantai Menganti',
        deskripsi:
            'Pantai Menganti merupakan sebuah pantai yang berlokasi di Desa Karangduwur, Kecamatan Ayah, Kabupaten Kebumen, Jawa Tengah. Bentang alam pada Pantai Menganti terdiri dari perbukitan dan pasir putih. Sejak tahun 2011, Pantai Menganti menjadi tempat wisata dan selancar, sekaligus pelabuhan dan pelelangan ikan.',
        imagePath: 'assets/images/wisata2.jpg',
        lokasi: 'Kebumen'),
    // Tambahkan wisata lain sesuai kebutuhan
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Jawa Tengah'),
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
