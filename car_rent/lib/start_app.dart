//import session
//this file.dart includes splash screen and login section
import 'package:car_rent/homepage.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

//script here

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean Code',
      home: AnimatedSplashScreen(
          duration: 3000,
          //splash: Icons.home,
          splash: Image.asset('assets/images/logo-1-text-500.png'),
          nextScreen: LoginScreen(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/images/stock-01.png',
                width: 400,
              ),
            ),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.only(top: 30.0),
              child: Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                //Button here
                child: ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Login By Gmail'.toUpperCase(),
                    style: TextStyle(fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    minimumSize: const Size.fromHeight(40),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Padding(
                padding: EdgeInsets.only(left: 15.0, right: 15.0),
                //Button here
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return HomePage();
                      },
                    ));
                  },
                  child: Text(
                    'Login as Guest'.toUpperCase(),
                    style: TextStyle(fontSize: 14),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    minimumSize: const Size.fromHeight(40),
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Image.asset(
                'assets/images/logo-1-500.png',
                width: 50,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              child: Text(
                'OTORent V.1.0.1 - leozan',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
