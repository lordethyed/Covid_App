import 'package:covid_19/const/const.dart';
import 'package:covid_19/main.dart';
import 'package:covid_19/widgets/myHeader.dart';
import 'package:covid_19/widgets/prevCard.dart';
import 'package:covid_19/widgets/sympthomCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyHeader(image: 'assets/icons/coronadr.svg', textTop: "Let's know", textBottom: 'About Covid 19', page: HomeScreen(),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Symptoms', style: kTitleTextStyle,),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround ,
                    children: const [
                      SympthomCard(
                        image: 'assets/images/headache.png',
                        title: 'Headache',
                        isActive: true,
                      ),
                      SympthomCard(
                        image: 'assets/images/caugh.png',
                        title: 'Caugh',
                      ),
                      SympthomCard(
                        image: 'assets/images/fever.png',
                        title: 'Fever',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Text('Prevention', style: kTitleTextStyle,),
                  const SizedBox(height: 20,),
                  const PrevCard(
                    image: 'assets/images/wear_mask.png',
                    text: 'Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks',
                    title: 'Wear the face mask',
                  ),
                  const PrevCard(
                    image: 'assets/images/wash_hands.png',
                    text: 'Since the start of the coronavirus outbreak some places have fully embraced wearing facemasks',
                    title: 'Wear the face mask',
                  ),
                  const SizedBox(height: 50,),

                ],
              ),
              )
          ],
        ),
      ),
    );
  }
}
