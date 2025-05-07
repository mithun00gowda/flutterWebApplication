import 'package:demo/utiles/constant.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Container1 extends StatefulWidget {
  const Container1({super.key});

  @override
  State<Container1> createState() => _Container1State();
}

class _Container1State extends State<Container1> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: desktopContainer1(),
      desktop: desktopContainer1(),
    );
  }

  Widget desktopContainer1() {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: Container(
              child: Column(
                children: [
                  Text(
                    'Track your \nExpenses to \nSave Money',
                    style: TextStyle(
                      fontSize: w! / 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
