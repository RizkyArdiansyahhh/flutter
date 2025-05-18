import 'package:flutter/material.dart';
import 'package:learn_flutter/cubitPage.dart';
import 'package:learn_flutter/widgets/center_widget.dart';

class DataWidget extends StatelessWidget {
  const DataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 100,
      color: Colors.redAccent,
      child: CenterWidget(),
    );
  }
}
