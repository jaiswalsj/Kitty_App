import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
import 'package:untitled1/UI/Dashboard.dart';
import 'package:untitled1/first_entry_pages/kitty_invitation_page.dart';

class FirstWelcome extends StatefulWidget {
  final String firstName;
  const FirstWelcome({Key? key, required this. firstName}) : super(key: key);

  @override
  State<FirstWelcome> createState() => _FirstWelcomeState();
}

class _FirstWelcomeState extends State<FirstWelcome> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage(Images.background)
          )
        ),
        child: Stack(
          children: [
          Center(
            child:Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/2.3,
              decoration: BoxDecoration(
                color: App_colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10,top: 10),
                        child: Align(
                          alignment:Alignment.topRight,
                          child: InkWell(
                              onTap:(){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()));
                              },
                              child: Image.asset(Images.roundedCross)),
                        ),
                      ),
                      Text("Hi ${widget.firstName}",style: TextStyle(fontSize: 30,color: App_colors.pink),),
                      SizedBox(height: 20,),
                      Text("Welcome to\nKittyBucks !",style: TextStyle(fontSize: 20,color: App_colors.pink),),
                      SizedBox(height: 30,),
                      InkWell(
                          onTap: (){},
                          child: Image.asset(Images.createKitty,width: 200,)),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          String firstName = widget.firstName;
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>InvitationKitty(firstname: firstName,)));
                        },
                        child: Text("Or,join an existing one",style: TextStyle(fontSize: 13,color: App_colors.pink),),
                      )
                    ],
                  )
                ],
              ),
            )
          ),],
        ),
      ),
    );
  }
}
// Container(
//               width: MediaQuery.of(context).size.width/1.2,
//               height: MediaQuery.of(context).size.height/2.3,
//               margin: EdgeInsets.only(top: 10),
//               decoration: BoxDecoration(
//                 color: App_colors.white,
//                 borderRadius: BorderRadius.circular(15),
//
//               ),
//             ),