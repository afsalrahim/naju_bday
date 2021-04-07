import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:naju_bday/core/constants.dart';

class GirlScreen extends StatefulWidget {
  GirlScreen({Key key}) : super(key: key);

  @override
  _GirlScreenState createState() => _GirlScreenState();
}

class _GirlScreenState extends State<GirlScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, Routes.bdayScreen);
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
                        Image.asset('assets/images/stars.gif'),
                        TypewriterAnimatedTextKit(
                            isRepeatingAnimation: false,
                            // onFinished: () =>
                            // Navigator.pushNamed(context, Routes.bdayScreen),
                            speed: Duration(milliseconds: 100),
                            onTap: () {
                              print("Tap Event");
                            },
                            text: [
                              "For a special girl..",
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
