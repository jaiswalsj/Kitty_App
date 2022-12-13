import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';

class KittyInfoPage extends StatefulWidget {
  const KittyInfoPage({Key? key}) : super(key: key);

  @override
  State<KittyInfoPage> createState() => _KittyInfoPageState();
}

class _KittyInfoPageState extends State<KittyInfoPage> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width/1.09,
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
              color: App_colors.black.withOpacity(0.5),
            ),

          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 20, 0, 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Kitty Name",style: TextStyle(color: App_colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 50,),
                    Text("Next Kitty 5/11",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                    Text("Next Venue",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                    Text("Kitty 3/8",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                  ],),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 17, 0, 0),
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
                    Text("Next Host",style: TextStyle(color: App_colors.pink,fontSize: 9,fontWeight: FontWeight.bold))
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
