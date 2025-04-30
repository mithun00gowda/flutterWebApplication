import 'package:demo/utiles/colors.dart';
import 'package:demo/utiles/styles.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(mobile: MobileNavBar(), desktop: DesktopNavBar());
  }

  // ========= Mobile view =============
  Widget MobileNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Icon(Icons.menu), navLogo()],
      ),
    );
  }

  // ========= Web view =============

  Widget DesktopNavBar() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Featurres'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          Container(
            height: 45,
            child: ElevatedButton(
              style: borderButtonStyle,
              onPressed: () {},
              child: Text(
                'Request a Demo',
                style: TextStyle(color: AppColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: () {},
        child: Text(text, style: TextStyle(color: Colors.black, fontSize: 18)),
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/logo.png')),
      ),
    );
  }
}
