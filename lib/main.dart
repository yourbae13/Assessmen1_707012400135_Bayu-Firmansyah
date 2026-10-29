import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'cubit/keranjang_cubit.dart';
import 'pages/beranda_page.dart';
import 'providers/favorit_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => FavoritProvider(),
      child: BlocProvider(
        create: (_) => KeranjangCubit(),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: BerandaPage(),
        ),
      ),
    );
  }
}
