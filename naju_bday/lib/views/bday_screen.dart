import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:naju_bday/core/constants.dart';

const colorizeColors = [
  Colors.purple,
  Colors.blue,
  Colors.yellow,
  Colors.red,
];

const colorizeTextStyle = TextStyle(
  fontSize: 35.0,
  fontFamily: 'Pacifico',
);

class BdayScreen extends StatefulWidget {
  BdayScreen({Key key}) : super(key: key);

  @override
  _BdayScreenState createState() => _BdayScreenState();
}

class _BdayScreenState extends State<BdayScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 12), () {
      Navigator.pushReplacementNamed(context, Routes.smileScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                    width: 250,
                    child: Column(
                      children: [
                        Image.asset('assets/images/cake.gif'),
                        SizedBox(
                          height: 20,
                        ),
                        ColorizeAnimatedTextKit(
                          // onTap: () =>
                          //     {Navigator.pushNamed(context, Routes.endScreen)},
                          // onFinished: () =>
                          //     {Navigator.pushNamed(context, Routes.endScreen)},
                          text: [
                            "Happy Birthday",
                          ],
                          totalRepeatCount: 4,
                          textStyle: colorizeTextStyle,
                          colors: colorizeColors,
                        ),
                        TextLiquidFill(
                          text: 'Naju',
                          waveColor: AppColor.primaryColor,
                          boxBackgroundColor: Color(0xFFFFFFFF),
                          textStyle: TextStyle(
                            fontSize: 60.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Pacifico',
                          ),
                          textAlign: TextAlign.left,
                          boxHeight: 150.0,
                        ),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
