import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../const/const.dart';



class PrevCard extends StatelessWidget {
  final String image;
  final String title;
  final String text;
  const PrevCard({
    super.key, required this.image, required this.title, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: 156,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Container(
              height: 136,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 8),
                    blurRadius: 24,
                    color: kShadowColor,
                  )
                ]
            ),
            ),
            Image.asset(image),
            Positioned(
              left: 130,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                height: 136,
                width: MediaQuery.of(context).size.width - 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: kTitleTextStyle.copyWith(fontSize: 16),),
                    Text(text, 
                    style: const TextStyle(
                      fontSize: 12,
                    )
                    ,),
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset('assets/icons/forward.svg'),)
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}

