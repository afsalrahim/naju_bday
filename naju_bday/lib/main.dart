import 'package:flutter/material.dart';
import 'package:naju_bday/core/navigation.dart';

void main() {
  runApp(NajuApp());
}

class NajuApp extends StatelessWidget {
  const NajuApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Naju Birthday',
      onGenerateRoute: Navigation.generateRoute,
      initialRoute: '/',
    );
  }
}
