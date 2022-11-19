import 'package:flutter/material.dart';

import '../OTP_checker/Otp.dart';
class PhoneVeri extends StatefulWidget {
  @override
  State<PhoneVeri> createState() => _PhoneVeriState();
}

class _PhoneVeriState extends State<PhoneVeri> {
  TextEditingController _digit= TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover,
                image: AssetImage("assets/images/backgroung.png")
              )
            ),
          ),
          SingleChildScrollView(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Container(
                    height: 600,
                    width: 600,

                    decoration: BoxDecoration(
                        image: DecorationImage(
                          // fit: BoxFit.cover,
                            image: AssetImage("assets/images/Group 180.png")
                          // image: NetworkImage("https://images.unsplash.com/photo-1668437688460-fb82fc4d0dce?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
                        )

                    ),
                  ),

                  SizedBox(height: 10,),
                 Container(

                   decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),
                     gradient: LinearGradient(
                       colors: [Colors.tealAccent,Colors.white]
                     )
                   ),
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 40,left: 40),
                         child: Text("Start Your Kitty Journey Now",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                       ),

                       Row(
                         children: [
                           Container(
                               margin: EdgeInsets.symmetric(vertical: 30,horizontal:40),
                               width: 250,height: 40,
                               // color: Colors.red,
                               decoration: BoxDecoration(
                                 color: Colors.green.shade100,
                                 borderRadius: BorderRadius.circular(10),
                               ),

                               child: Row(

                                 children: [
                                   Padding(
                                     padding: const EdgeInsets.only(left: 12.0),
                                     child: Text("+91"),
                                   ),
                                   SizedBox(width: 10,),
                                   Expanded(
                                     child : TextField(
                                       controller: _digit,
                                       keyboardType: TextInputType.number,
                                       decoration: InputDecoration(
                                           hintText: ("9999999999"),
                                           border: InputBorder.none
                                       ),
                                     ),
                                   ),
                                 ],
                               )

                           ),
                           IconButton(onPressed: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpPage()));
                           }, icon: Icon(Icons.keyboard_arrow_right_outlined),iconSize: 40,)
                         ],
                       )
                     ],
                   ),
                 )
                ],

              ),
            ),
          ),
        ],
      )

    );
  }
}
