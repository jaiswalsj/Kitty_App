import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled1/UI/Phone_verification.dart';
import 'package:untitled1/UI/my_kitty_page.dart';
import 'package:untitled1/UI/notification_page.dart';
import 'package:untitled1/UI/profile_page.dart';
import 'package:untitled1/first_entry_pages/joined_page.dart';
import 'package:untitled1/practice_page/validation_prac.dart';

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
              child: Image.asset("assets/images/logo.png",height: 200,width: 200,)
          ),
        ],
      )
    );
  }
}


// void main(){
//   runApp(MaterialApp(home:JoinPage(),
//   debugShowCheckedModeBanner: false,));
// }
