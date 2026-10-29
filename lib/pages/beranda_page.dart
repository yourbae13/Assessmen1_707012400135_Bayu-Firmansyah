import 'package:ecomart/pages/form_pemesanan_page.dart';
import 'package:ecomart/pages/produk_page.dart';
import 'package:flutter/material.dart';
import 'package:ecomart/pages/favorit_page.dart';
import 'package:ecomart/pages/keranjang_page.dart';
import 'package:ecomart/pages/lokasi_page.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ecomart')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Ecomart',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text('Produk Daur Ulang.'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProdukPage()),
                );
              },
              child: const Text('Lihat Produk'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FormPemesananPage(),
                  ),
                );
              },
              child: const Text('Buat Pesanan'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FavoritPage()),
                );
              },
              child: const Text('Favorit'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KeranjangPage(),
                  ),
                );
              },
              child: const Text('Lihat Keranjang'),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LokasiPage()),
                );
              },
              child: const Text('Lokasi Komunitas'),
            ),
          ],
        ),
      ),
    );
  }
}
