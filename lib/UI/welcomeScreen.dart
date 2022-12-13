import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
import 'package:untitled1/UI/Dashboard.dart';
import 'package:untitled1/first_entry_pages/First_welcome_page.dart';
class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  TextEditingController _firstnameController = new TextEditingController();
  TextEditingController _lastnameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
        },
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  image: DecorationImage(fit: BoxFit.cover,
                    image: AssetImage(Images.background),
                  )
                ),
              ),
              SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.35,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Images.welcome)
                        )
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/1.05,
                      height: MediaQuery.of(context).size.height/4.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topRight: Radius.circular(45)),
                        color: App_colors.white
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: App_colors.black),),
                            SizedBox(height: 25,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  child : TextFormField(
                                    controller: _firstnameController,
                                    keyboardType: TextInputType.text,
                                    textAlign: TextAlign.center,

                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                                      border: InputBorder.none,
                                      fillColor: App_colors.pink,
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: App_colors.pink
                                          )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(15),
                                          borderSide: BorderSide(
                                              color: App_colors.pink
                                          )
                                      ),
                                      hintText: "First Name",
                                    ),
                                  ),
                                ),
                                SizedBox(width: 5,),

                                Expanded(
                                  child : TextFormField(
                                    controller: _lastnameController,
                                    keyboardType: TextInputType.text,
                                    textAlign: TextAlign.center,

                                    decoration: InputDecoration(
                                      contentPadding: EdgeInsets.symmetric(vertical: 5),
                                      border: InputBorder.none,
                                      fillColor: App_colors.pink,
                                      focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          color: App_colors.pink
                                        )
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        borderSide: BorderSide(
                                          color: App_colors.pink
                                        )
                                      ),
                                      hintText: "Last Name",
                                    ),
                                  ),
                                ),
                                SizedBox(width:15,),
                                Container(
                                  width: 20,
                                  height: 30,
                                  child: InkWell(
                                    onTap: (){
                                      if(_firstnameController.text.isEmpty)
                                        {
                                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please Enter your name")));
                                        }
                                      else{
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FirstWelcome(firstName:_firstnameController.text)));
                                      }
                                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>FirstWelcome(firstName:_firstnameController.text)));
                                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()));
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(Images.rightArrow)
                                        )
                                      ),
                                    )
                                  ),
                                )
                                // IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_right_sharp,size: 40,color: App_colors.pink,))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),

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
