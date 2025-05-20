import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';

class UserBloc extends Cubit<Map<String, dynamic>> {
  UserBloc() : super({"nama": "anonymous", "umur": 0});

  void changedName(String changeName) {
    emit({
      "nama": changeName,
      "umur": state["umur"],
    });
  }

  void changedUmur(int changeUmur) {
    emit({"nama": state["nama"], "umur": changeUmur});
  }

  @override
  void onChange(Change<Map<String, dynamic>> change) {
    // TODO: implement onChange
    super.onChange(change);
    log("$change");
  }
}
