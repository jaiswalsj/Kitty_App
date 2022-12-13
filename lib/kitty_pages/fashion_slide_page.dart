import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';

class FashionPage extends StatefulWidget {
  const FashionPage({Key? key}) : super(key: key);

  @override
  State<FashionPage> createState() => _FashionPageState();
}

class _FashionPageState extends State<FashionPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height:MediaQuery.of(context).size.height/4.7,width: MediaQuery.of(context).size.width/3.5,
      child: new Stack(
        children: <Widget>[
          new Container(
            height:100,width: 100,
            decoration: new BoxDecoration(color: App_colors.background,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(Images.faishone)
                )
            ),

          ),
          new Positioned(
            left: 15.0,
            top: 65,
            child: new Container(
              decoration: new BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: CircleAvatar(
                backgroundColor: App_colors.white,
                child: Text("ZARA",style: TextStyle(color: App_colors.black,fontWeight: FontWeight.bold),),
                // backgroundImage: AssetImage(Images.demo_img),
                radius: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
