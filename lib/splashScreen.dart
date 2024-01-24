import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vehicle_rental/pages/homePage.dart';
import 'package:vehicle_rental/pages/pickupDetailPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String idScreen = "Splash screen";

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => const HomePage(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    //Implement the dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery. of(context). size. height,
        width: MediaQuery. of(context). size. height,
        child: Image.asset(
          'assets/splash.png',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
