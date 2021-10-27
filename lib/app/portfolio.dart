import 'package:flutter/material.dart';
import 'package:portfolio_6pm/screens/home.dart';

class Portfolio extends StatelessWidget {
  Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}
