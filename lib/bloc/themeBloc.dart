import 'dart:developer';
import 'package:flutter_bloc/flutter_bloc.dart';

class Themebloc extends Cubit<bool> {
  // if true => light mode (default)
  // if false => dark mode
  Themebloc() : super(true);

  void changeMode() => emit(!state);

  @override
  void onChange(Change<bool> change) {
    log("$change");
  }
}
