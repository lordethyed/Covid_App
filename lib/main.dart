import 'package:covid_19/info_screen.dart';
import 'package:covid_19/widgets/myHeader.dart';
import 'package:flutter/material.dart';
import 'package:covid_19/const/const.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:covid_19/widgets/counter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Covid-19',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        // textTheme: const TextTheme(
        //   body1: TextStyle(color: kBackgroundColor)
        // ) 
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const MyHeader(image: 'assets/icons/Drcorona.svg', textTop: 'All you need', textBottom: 'is stat at home!', page: InfoScreen(),),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: Border.all(color: const Color(0xFFE5E5E5))
              ),
              child: Row(children: [
                SvgPicture.asset('assets/icons/maps-and-flags.svg'),
                const SizedBox(width: 20,),
                Expanded(child: 
                  DropdownButton(
                  isExpanded: true,
                  underline: const SizedBox(),
                  icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                  value: 'Kazakhstan',
                  items: 
                  ['Kazakhstan', 'Uzbekistan', 'Russia', 'Kyrgyzstan', 'China'].map<DropdownMenuItem<String>>((String value){
                    return DropdownMenuItem<String>( 
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
                )
              ]),
            ),
            const SizedBox(height: 20,),
            Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          RichText(
                            text: const TextSpan(children: [TextSpan(text: 'Case Update\n', style: kTitleTextStyle), TextSpan(text: 'Newest update Today.', style: TextStyle(color: kTextLightColor))])),
                          const Spacer(),
                          const Text('See details', style: TextStyle(color: kPrimaryColor, fontWeight: FontWeight.w600),)
                        ],
                      ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(20), 
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20), 
                        color: Colors.white, 
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0,4), 
                            blurRadius: 30, 
                            color: kShadowColor), ]),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const[
                          Counter(
                            color: kInfectedColor,
                            number: 1046,
                            title: 'Infected',
                          ),
                          Counter(
                            color: kDeathColor,
                            number: 14,
                            title: 'Pass Away',
                          ),
                          Counter(
                            color: kRecovercolor,
                            number: 75,
                            title: 'Recovered',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                         Text('Spread of Virus', style: kTitleTextStyle,),
                         Text('See details', style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w600,
                         ),)
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 20),
                      padding: const EdgeInsets.all(20),
                      height: 178,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            offset: const Offset(0, 10),
                            blurRadius: 30,
                            color: kShadowColor,  
                          )
                        ],
                      ),
                      child: Image.asset(
                        'assets/images/map.png',
                        fit: BoxFit.contain,),
                    )
                    ]),
                  ),
          ],
        ),
      ),
    );
  }
}


