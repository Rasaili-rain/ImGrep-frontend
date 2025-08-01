import 'package:flutter/material.dart';
import 'package:imgrep/pages/splashscreen.dart';

final String description1 =
    "ImGrep is your AI-powered visual search companion — built to make sense of the images around you. In a world overflowing with digital content, ImGrep helps you cut through the noise and find what matters.";
final String description2 =
    "It doesn't just look at images — it looks into them, extracting meaning, context, and insight.";

class Getstarted extends StatelessWidget {
  const Getstarted({super.key});

  void onGetStarted(BuildContext context) {
    // NOTE(slok): Moving to splash screen after the get started page.
    // Did this to utilize the splash screen as a loading page for syncing the database
    // If this is not natural might have to change it later
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SplashScreen(syncDatabase: true)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              spacing: 30,
              children: [
                SizedBox(
                  height: 50,
                  width: 200,
                  child: Center(
                    child: Text(
                      "ImGrep",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Poppins',
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  width: 370,
                  child: Column(
                    spacing: 10,
                    children: [
                      Text(
                        description1,
                        style: TextStyle(
                          color: Color(0xff8E9295),
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        description2,
                        style: TextStyle(
                          color: Color(0xff8E9295),
                          fontFamily: 'Poppins',
                          fontSize: 15,
                          height: 1.6,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: () => onGetStarted(context),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Get Started",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 17,
                    ),
                  ),
                  SizedBox(width: 8),
                  Image.asset(
                    'assets/icons/arrowforward.png',
                    height: 10,
                    width: 10,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
