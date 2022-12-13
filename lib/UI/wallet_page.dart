import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    // var tx=0;
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage(Images.background)
            ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft:Radius.circular(60),bottomRight:Radius.circular(70),),
                  color: App_colors.pink,
                ),
                height: MediaQuery.of(context).size.height/3,
                width: MediaQuery.of(context).size.width,

                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(height: 60,width: 70,decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Images.app_logo),fit: BoxFit.cover)),),
                    Text("Wallet Balance",style: TextStyle(fontSize: 24,color: App_colors.white),),
                    SizedBox(height: 15,),
                    //₹
                    Text('\u20B9'"30,000",style: TextStyle(fontSize: 35,color: App_colors.white,),),
                   SizedBox(height: 8,),
                   RaisedButton(onPressed: (){},child: Text("Add Money",style: TextStyle(color: App_colors.pink),),color: App_colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),)
                  ],
                ),
              ),
              SizedBox(height: 13,),
              Container(
                height: MediaQuery.of(context).size.height/4.5,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                color: App_colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("No active loans",style: TextStyle(fontSize: 25,color: App_colors.black),),
                  SizedBox(height: 15,),
                  Text("\t\t\t\t\tYou haven't taken any loans yet,\ncheckout different loan to get started",style: TextStyle(color: App_colors.black.withOpacity(0.5),fontSize: 10),),
                  SizedBox(height: 8,),
                  RaisedButton(onPressed: (){},child: Text("Apply Now",style: TextStyle(color: App_colors.white),),color: App_colors.pink,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                ],
              ),),
              SizedBox(height: 20,),
              Container(
                height: MediaQuery.of(context).size.height/4,
                width: MediaQuery.of(context).size.width/1.2,
                decoration: BoxDecoration(
                    color: Colors.cyanAccent[700],
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("503",style: TextStyle(color: App_colors.white,fontSize: 40,fontWeight: FontWeight.bold),),
                    Text("Kitty Points",style: TextStyle(color: App_colors.white),),
                    RaisedButton(onPressed: (){},child: Text("Apply Now",style: TextStyle(color:Colors.cyanAccent[700]),),color: App_colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),),
                    SizedBox(height: 10,),
                    InkWell(
                        onTap: (){},
                        child: Text("How to earn kitty point?",style: TextStyle(fontSize: 10),))

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
