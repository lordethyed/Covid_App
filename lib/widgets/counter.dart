import 'package:flutter/material.dart';
import 'package:covid_19/const/const.dart';

class Counter extends StatelessWidget {
  final int number;
  final Color color;
  final String title;

  const Counter({
    super.key, required this.number, required this.color, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(6),
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color.withOpacity(.26)
          ),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              border: Border.all(
                color: color,
                width: 2,
              )
              ),
            ),
        ),
        const SizedBox(height: 10,),
        Text(
          '$number', 
          style: TextStyle(
            fontSize: 40,
            color: color,
          ),),
        Text(
          title, 
          style: kSubTextStyle,
        )
      ],
    );
  }
}