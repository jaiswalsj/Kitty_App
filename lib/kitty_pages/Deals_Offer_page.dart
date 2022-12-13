import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';

class DealImg extends StatefulWidget {
  const DealImg({Key? key}) : super(key: key);

  @override
  State<DealImg> createState() => _DealImgState();
}

class _DealImgState extends State<DealImg> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width/1.09,
      // height: MediaQuery.of(context).size.height/4.2,
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.cover,
            image: AssetImage(Images.drinking_zone_img),

          ),
          borderRadius: BorderRadius.circular(15)
      ),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width/1.09,
            height: MediaQuery.of(context).size.height/4.2,

            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(15),
              color: App_colors.black.withOpacity(0.5),
            ),

          ),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 15, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name of Venue",style: TextStyle(color: App_colors.white,fontSize: 12),),
                        SizedBox(height: 8,),
                        Text("Location",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                        SizedBox(height: 15,),
                        Text("DEAL",style: TextStyle(color: App_colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                        SizedBox(height: 20,),
                        Row(children: [
                          CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_pic),radius: 12,),
                          CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_img),radius: 12,),
                          CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_pic),radius: 12,),
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("4.5/5 Ratings",style: TextStyle(fontSize: 10,color: App_colors.white.withOpacity(0.5)),),
                                Text("30 People reviewed this place",style: TextStyle(fontSize: 10,color: App_colors.white.withOpacity(0.5)),),

                              ],
                            ),
                          )
                        ],)
                        // Text("Kitty 3/8",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                      ],),
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            alignment: AlignmentDirectional.topStart ,
                            height: 60,width: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(fit: BoxFit.cover,
                                    image: AssetImage(Images.demo_pic)
                                ),
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: App_colors.white.withOpacity(0.7))
                            ),
                          ),
                          Icon(Icons.chevron_right,color: App_colors.white,size: 20,)
                        ],
                      )
                    ],
                  )
                ],
              ),

            ],
          ),


        ],
      ),

    );
  }
}
