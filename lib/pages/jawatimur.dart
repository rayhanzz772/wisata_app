// jawaTimur.dart
import 'package:flutter/material.dart';
import 'wisata.dart';

class JawaTimurPage extends StatelessWidget {
  final List<Wisata> wisataList = [
    Wisata(
        nama: 'Bromo',
        deskripsi:
            'Gunung Bromo atau dalam bahasa Tengger dieja "Brama", juga disebut Kaldera Tengger, adalah sebuah gunung berapi aktif di Jawa Timur, Indonesia. Gunung ini memiliki ketinggian 2.329 meter di atas permukaan laut dan berada dalam empat wilayah kabupaten, yakni Kabupaten Probolinggo, Kabupaten Pasuruan, Kabupaten Lumajang, dan Kabupaten Malang. Gunung Bromo terkenal sebagai objek wisata utama di Jawa Timur. Sebagai sebuah objek wisata, Bromo menjadi menarik karena statusnya sebagai gunung berapi yang masih aktif. Gunung Bromo termasuk dalam kawasan Taman Nasional Bromo Tengger Semeru.',
        imagePath: 'assets/images/bromo.jpg',
        lokasi: 'Malang'),
    Wisata(
        nama: 'Kawah Ijen',
        deskripsi:
            'Keindahan Kawah ijen dengan fenomena alam yang mendunia tidak terbantahkan. Api Biru menjadi salah satu daya tarik utama dari Kawah ijen, saat selimut malam tiba memunculkan pijar api biru dari dasar kawah Ijen. Fenomena alam yang diakibatkan oleh sublimasi gas belerang hingga mencapai suhu 200 derajat lebih memunculkan Blue fire yang hanya ada dua di Dunia. ketika mentari pagi mulai menyapu kegelapan malam, tampak Pemandangan alam yang sangat eksotis. Kawah dengan zat asam terbesar di dunia, guratan alam yang terbentuk di sekeliling tebing kawah, Kegiatan Para Penambang belerang dan para pendaki berpadu menjadi pemandangan yang eksotis..',
        imagePath: 'assets/images/ijen.jpg',
        lokasi: 'Banyuwangi'),
    // Tambahkan wisata lain sesuai kebutuhan
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Jawa Timur'),
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
