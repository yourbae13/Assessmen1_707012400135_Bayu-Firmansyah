import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LokasiPage extends StatelessWidget {
  const LokasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    const LatLng lokasi = LatLng(-6.914744, 107.609810);

    return Scaffold(
      appBar: AppBar(title: const Text('Lokasi Komunitas')),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(target: lokasi, zoom: 15),
        markers: {
          const Marker(
            markerId: MarkerId('ecomart'),
            position: lokasi,
            infoWindow: InfoWindow(title: 'Bank Sampah Hijau'),
          ),
        },
      ),
    );
  }
}
