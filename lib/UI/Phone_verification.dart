import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';

import '../OTP_checker/Otp.dart';
class PhoneVeri extends StatelessWidget with NumberInputValidation{

  TextEditingController _digit= TextEditingController();
  final _numkey = GlobalKey <FormState>();

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
                image: AssetImage(Images.background)
              )
            ),
          ),
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    height: MediaQuery.of(context).size.height/1.25,
                    width: MediaQuery.of(context).size.width,

                    decoration: BoxDecoration(
                        image: DecorationImage(
                          // fit: BoxFit.cover,
                            image: AssetImage("assets/images/Group 180.png")

                        )

                    ),
                  ),

                  SizedBox(height: 10,),
                 Container(
                   // height: MediaQuery.of(context).size.height/4.1,
                   // width: MediaQuery.of(context).size.width/1.1,

                   decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(45)),
                    color: App_colors.white
                   ),
                   child: Column(
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(right: 20,left: 40),
                         child: Text("Start Your Kitty Journey Now",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                       ),

                       Row(
                         children: [
                           Container(
                               margin: EdgeInsets.symmetric(vertical: 24,horizontal:30),
                               width: 210,height: 40,
                               // color: Colors.red,
                               decoration: BoxDecoration(
                                 border: Border.all(color: App_colors.pink),
                                 // color: Colors.green.shade100,
                                 borderRadius: BorderRadius.circular(10),
                               ),

                               child: Form(
                                 key: _numkey,
                                 child: Row(

                                   children: [
                                     Padding(
                                       padding: const EdgeInsets.only(left: 12.0),
                                       child: Text("+91"),
                                     ),
                                     SizedBox(width: 10,),
                                     Expanded(
                                       child : TextFormField(
                                         validator: (number){
                                           if(isNumberValid(number!))return null;
                                           else{
                                             return "Enter Valid Number";
                                           }
                                         },
                                         controller: _digit,
                                         keyboardType: TextInputType.number,

                                         decoration: InputDecoration(


                                             hintText: ("9999999999"),
                                             border: InputBorder.none
                                         ),
                                       ),
                                     ),
                                   ],
                                 ),
                               )

                           ),
                           Container(
                             width: 20,
                             height: 30,
                             child: InkWell(
                               onTap: (){
                                 if(_numkey.currentState!.validate()){
                                   _numkey.currentState!.save();
                                   Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OtpPage()));
                                 }

                               },
                               child: Container(
                                 decoration: BoxDecoration(
                                   image: DecorationImage(
                                     image: AssetImage(Images.rightArrow)
                                   )
                                 ),
                               ),
                             ),
                           )
                           // IconButton(onPressed: (){
                           //   Navigator.push(context, MaterialPageRoute(builder: (context)=>OtpPage()));
                           // }, icon: Icon(Icons.keyboard_arrow_right_outlined),iconSize: 40,)
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

mixin NumberInputValidation{
  bool isNumberValid(String number){
    Pattern pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regExp = RegExp(number.toString());
    return regExp.hasMatch(number);
  }
}
