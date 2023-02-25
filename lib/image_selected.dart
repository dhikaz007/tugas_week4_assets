import 'package:flutter/material.dart';

class TapImage extends StatelessWidget {
  // Inisialisasi parameter
  final String image;

  const TapImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Membuat title untuk halaman kedua
        title: const Text('Selected Image'),
      ),
      // Menampilkan gambar yang di pilih
      body: Image(
        image: AssetImage(image),
        width: double.infinity,
        // Mengatur fit agar tampil seluruh layar
        fit: BoxFit.cover,
      ),
    );
  }
}
