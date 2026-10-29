import 'package:flutter_bloc/flutter_bloc.dart';

class KeranjangCubit extends Cubit<int> {
  KeranjangCubit() : super(0);

  void tambahKeranjang() {
    emit(state + 1);
  }
}
