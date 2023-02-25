import 'package:flutter/material.dart';
import 'package:tugas_week4_assets/image_selected.dart';

class ImageList extends StatefulWidget {
  const ImageList({super.key});

  @override
  State<ImageList> createState() => _ImageListState();
}

class _ImageListState extends State<ImageList> {
  // Membuat List gambar
  final List<String> imgList = [
    'assets/images/image1.jpg',
    'assets/images/image2.jpg',
    'assets/images/image3.jpg',
    'assets/images/image4.jpg',
    'assets/images/image5.jpg',
  ];

  // Inisialisasi Judul ada appbar
  final titles = 'Test Photo Gallery';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(titles),
        ),
        // Menampilkan gambar dalam widget GridView
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0,
          ),
          itemCount: imgList.length,
          itemBuilder: (context, index) {
            // Membuat pendeteksi ketika gambar di pilih
            return GestureDetector(
              onTap: () {
                // Membuat navigator agar halaman berubah
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      // Rute halaman baru setelah memilih gambar
                        builder: (context) =>
                            TapImage(image: imgList[index])));
              },
              // Menampilkan list gambar
              child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgList[index]),
                        fit: BoxFit.cover)),
              ),
            );
          },
        ),
      ),
    );
  }
}
