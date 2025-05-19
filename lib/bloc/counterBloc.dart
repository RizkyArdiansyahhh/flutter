import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class Counterbloc extends Cubit<int> {
  Counterbloc({this.initialData = 0}) : super(initialData);
  final int initialData;

  void add() => emit(state + 1);
  void remove() => emit(state - 1);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    log("$change");
  }
}
