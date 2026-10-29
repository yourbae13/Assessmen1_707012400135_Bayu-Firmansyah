import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecomart/providers/favorit_provider.dart';

class FavoritPage extends StatelessWidget {
  const FavoritPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Favorit')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<FavoritProvider>(
              builder: (context, favorit, child) {
                return Text(
                  'Jumlah Favorit: ${favorit.jumlahFavorit}',
                  style: const TextStyle(fontSize: 20),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<FavoritProvider>().tambahFavorit();
              },
              child: const Text('Tambah Favorit'),
            ),
          ],
        ),
      ),
    );
  }
}
