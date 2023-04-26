import 'package:flutter/material.dart';
import '../const/const.dart';

class SympthomCard extends StatelessWidget {
  final String title;
  final String image;
  final bool isActive;
  const SympthomCard({
    super.key, required this.title, required this.image, this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow:[ 
          isActive ? 
          BoxShadow(
            offset: const Offset(0, 10), 
            blurRadius: 30, 
            color: kActiveShadowColor
          ) : BoxShadow(
            offset: const Offset(0, 3),
            blurRadius: 6,
            color: kShadowColor,
            )]
        ),
        child: Column(children: [
          Image.asset(image),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold),)
        ]),
    );
  }
}