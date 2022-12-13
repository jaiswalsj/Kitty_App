import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
import 'package:untitled1/UI/Dashboard.dart';
import 'package:untitled1/first_entry_pages/joined_page.dart';

class InvitationKitty extends StatefulWidget {
  final String firstname;
  const InvitationKitty({Key? key, required this.firstname}) : super(key: key);
  @override
  State<InvitationKitty> createState() => _InvitationKittyState();
}

class _InvitationKittyState extends State<InvitationKitty> {

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
                  height: MediaQuery.of(context).size.height/1.4,
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
                          Text("Hi ${widget.firstname}",style: TextStyle(fontSize: 30,color: App_colors.pink),),
                          SizedBox(height: 20,),
                          Text("Full Name",style: TextStyle(fontSize: 20,color: App_colors.big_text),),
                          Text("has invited you to join",style: TextStyle(fontSize: 20,color: App_colors.big_text),),
                          SizedBox(height: 30,),
                          InkWell(
                              onTap: (){},
                              child: KittyInfoPage()
                          ),
                          SizedBox(height: 8,),
                          InkWell(
                            onTap: (){},
                            child: Text("Read More About This Kitty",style: TextStyle(fontSize: 10,color: App_colors.pink),),
                          ),
                          SizedBox(height: 20,),
                          RaisedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>JoinPage()));
                          },child: Text("Yes I Wish To Join",style: TextStyle(color: App_colors.white),),color: App_colors.pink,),
                         SizedBox(height: 10,),
                         InkWell(
                           onTap: (){
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()));
                           },
                            child:Text("Or,Click here to Deny",style: TextStyle(color: App_colors.pink,fontSize: 10),)
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

  Widget KittyInfoPage(){
    return Container(
      width: MediaQuery.of(context).size.width/1.3,
      height: MediaQuery.of(context).size.height/4.2,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage(Images.drinking_zone_img),

          ),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Stack(
        children: [
          Container(


            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(15),
              color: App_colors.black.withOpacity(0.7),
            ),

          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 12, 0, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kitty Name",style: TextStyle(color: App_colors.white,fontSize: 17),),
                    SizedBox(height: 10,),
                    Text("08 Members",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                    SizedBox(height: 3,),
                    Text("Amount",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                    SizedBox(height: 50,),
                    Text("3rd Sat/Monthly",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 8),),

                  ],),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 17, 0, 0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45),
                      child: Row(
                        children: [
                          CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_pic),radius: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Column(
                              children: [
                                Text("First Name",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                                Text("Organiser",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 28,),
                    Text("Members",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 12),),
                    SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,

                      children: [
                        Column(

                          children: [
                            CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_pic),radius: 15,),
                            Text("FirstName",style: TextStyle(color: App_colors.white,fontSize: 8),)
                          ],),
                        SizedBox(width: 8,),
                        Column(children: [
                          CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_pic),radius: 15,),
                          Text("FirstName",style: TextStyle(color: App_colors.white,fontSize: 8),)
                        ],),
                        SizedBox(width: 8,),
                        Column(children: [
                          CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_pic),radius: 15,),
                          Text("FirstName",style: TextStyle(color: App_colors.white,fontSize: 8),)
                        ],)

                      ],),

                  ],
                ),
              )
            ],
          ),


        ],
      ),

    );
  }
}
