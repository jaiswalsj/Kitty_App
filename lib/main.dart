import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/UI/Phone_verification.dart';

void main()
{
  runApp(MaterialApp(home: SplashScreen(),
    debugShowCheckedModeBanner: false,
  ));
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PhoneVeri())));
    print("Placed");
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.purpleAccent.shade100,
      body: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover,
                image: AssetImage("assets/images/backgroung.png")
              )
            ),
          ),Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/logo.png",height: 200,width: 200,)
                ],
              )
          ),
        ],
      )
    );
  }
}
