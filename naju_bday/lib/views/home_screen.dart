import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:naju_bday/core/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, Routes.girlScreen);
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
                        Image.asset('assets/images/day.gif'),
                        TypewriterAnimatedTextKit(
                            isRepeatingAnimation: false,
                            speed: Duration(milliseconds: 100),
                            onTap: () {
                              print("Tap Event");
                            },
                            text: [
                              "It's a special day...",
                            ],
                            textStyle: TextStyle(
                                fontSize: 30.0,
                                fontFamily: "Pacifico",
                                color: AppColor.primaryColor),
                            textAlign: TextAlign.start,
                            alignment: AlignmentDirectional
                                .topStart // or Alignment.topLeft
                            ),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
