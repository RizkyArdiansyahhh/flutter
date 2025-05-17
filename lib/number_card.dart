import 'package:flutter/material.dart';

class NumberCard extends StatelessWidget {
  final String? title;
  final int? number;
  const NumberCard({super.key, this.title, this.number});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 100,
      child: Column(
        children: [
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue.shade300,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                topRight: Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(title!),
            ),
          ),
          Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.blue.shade100,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(number.toString()),
            ),
          )
        ],
      ),
    );
  }
}
