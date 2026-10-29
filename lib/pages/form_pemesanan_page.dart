import 'package:flutter/material.dart';

class FormPemesananPage extends StatefulWidget {
  const FormPemesananPage({super.key});

  @override
  State<FormPemesananPage> createState() => _FormPemesananPageState();
}

class _FormPemesananPageState extends State<FormPemesananPage> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  String metode = 'Tunai';
  bool setuju = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form Pemesanan')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: namaController,
              decoration: const InputDecoration(labelText: 'Nama Pembeli'),
            ),
            TextField(
              controller: alamatController,
              decoration: const InputDecoration(labelText: 'Alamat Pengiriman'),
            ),
            RadioListTile<String>(
              title: const Text('Diantar'),
              value: 'Diantar',
              groupValue: metode,
              onChanged: (value) {
                setState(() {
                  metode = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('Ambil di Tempat'),
              value: 'Ambil di Tempat',
              groupValue: metode,
              onChanged: (value) {
                setState(() {
                  metode = value!;
                });
              },
            ),
            CheckboxListTile(
              title: const Text('Saya menyetujui pesanan ini'),
              value: setuju,
              onChanged: (value) {
                setState(() {
                  setuju = value!;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                if (setuju) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Pesanan berhasil dibuat')),
                  );
                }
              },
              child: const Text('Kirim Pesanan'),
            ),
          ],
        ),
      ),
    );
  }
}
