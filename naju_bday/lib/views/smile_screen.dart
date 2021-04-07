import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:naju_bday/core/constants.dart';

class SmileScreen extends StatelessWidget {
  const SmileScreen({Key key}) : super(key: key);

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
                        Image.asset('assets/images/smile.png'),
                        SizedBox(
                          height: 30,
                        ),
                        TypewriterAnimatedTextKit(
                            isRepeatingAnimation: false,
                            onFinished: () => {},
                            speed: Duration(milliseconds: 100),
                            text: [
                              "Keep smiling and have a great day...!",
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
