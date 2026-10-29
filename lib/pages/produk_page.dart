import 'package:flutter/material.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({super.key});

  @override
  State<ProdukPage> createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  final List<Map<String, dynamic>> produk = [
    {'nama': 'Pupuk Kompos Organik', 'harga': 'Rp15.000', 'jumlah': 1},
    {'nama': 'Pot Tanaman Daur Ulang', 'harga': 'Rp25.000', 'jumlah': 1},
    {'nama': 'Tas Kemasan Daur Ulang', 'harga': 'Rp35.000', 'jumlah': 1},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Produk')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: produk.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(produk[index]['nama']),
                    subtitle: Text(produk[index]['harga']),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              if (produk[index]['jumlah'] > 1) {
                                produk[index]['jumlah']--;
                              }
                            });
                          },
                        ),
                        Text('${produk[index]['jumlah']}'),
                        IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () {
                            setState(() {
                              produk[index]['jumlah']++;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Kembali'),
          ),
        ],
      ),
    );
  }
}
