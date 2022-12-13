import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
class KittyActivities extends StatefulWidget {
  const KittyActivities({Key? key}) : super(key: key);

  @override
  State<KittyActivities> createState() => _KittyActivitiesState();
}

class _KittyActivitiesState extends State<KittyActivities> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Stack(children: [
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Container(
              height: 40,
              width: 290,color: App_colors.white,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Row(
                  children: [
                    CircleAvatar(backgroundImage:AssetImage(Images.demo_img),radius: 15,),
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("First Name",style: TextStyle(fontSize: 12,color: App_colors.black.withOpacity(0.7)),),
                          AutoSizeText.rich(
                            TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Reviewed",style: TextStyle(fontSize: 10,color: App_colors.black.withOpacity(0.5)),
                                  ),
                                  TextSpan(
                                    text: " ",style: TextStyle(fontSize: 10,color: App_colors.black.withOpacity(0.5)),
                                  ),
                                  TextSpan(
                                      text: "XYZ Saloon",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: App_colors.black)
                                  )
                                ]
                            ),


                          ),

                        ],
                      ),

                    ),
                    SizedBox(width: 80,),
                    Align(
                        alignment: Alignment.topRight,
                        child: Text("30 Oct 2022",style: TextStyle(fontSize: 8,color: App_colors.black.withOpacity(0.5),))),
                  ],
                ),
              ),
            ),
          ),

        ],
        ),
        Divider(thickness: 0.2,indent: 20,endIndent: 30,color: App_colors.pink,),

      ],
    );
  }
}
