import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
import 'package:untitled1/UI/Dashboard.dart';
import 'package:untitled1/UI/home_page.dart';

class JoinPage extends StatefulWidget {
  const JoinPage({Key? key}) : super(key: key);

  @override
  State<JoinPage> createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  final dob = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Container(
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
                          Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text("Now you are a part of",style: TextStyle(fontSize: 14,color: App_colors.pink),),
                                SizedBox(height: 7,),
                                Container(
                                  height: MediaQuery.of(context).size.height/14.5,
                                  width:MediaQuery.of(context).size.width/1.5,
                                 decoration: BoxDecoration(
                                   color: App_colors.white,
                                   border: Border.all(color: App_colors.text_color),
                                   borderRadius: BorderRadius.circular(10)
                                 ),
                                  child: Center(child: Text("Kitty Name",style: TextStyle(fontSize: 25,color: App_colors.big_text),)),
                                ),
                                SizedBox(height: 20,),
                                Text("To Proceed further,you need",style: TextStyle(fontSize: 12,color: App_colors.black),),
                                Text("to complete your profile",style: TextStyle(fontSize: 12,color: App_colors.black),),
                                SizedBox(height: 28,),
                                Text("Upload Profile Photo",style: TextStyle(fontSize: 16,color: App_colors.pink),),
                                InkWell(
                                    onTap: (){},
                                    child: CircleAvatar(backgroundImage: AssetImage(Images.demo_img),radius: 40)
                                ),
                                SizedBox(height: 20,),
                                Text("Enter your DOB",style: TextStyle(color: App_colors.pink,fontSize: 16),),
                                SizedBox(height: 10,),
                                Container(
                                  width: MediaQuery.of(context).size.width/1.5,
                                  child: TextFormField(
                                    controller:dob ,
                                    keyboardType: TextInputType.number,
                                    textAlign: TextAlign.center,
                                    decoration: InputDecoration(
                                      hintText: "DD/MM/YYYY",
                                      contentPadding: EdgeInsets.symmetric(horizontal: 50),
                                      enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide(color: App_colors.pink)
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(10),
                                          borderSide: BorderSide(color: App_colors.pink)
                                      ),
                                    ),
    readOnly: true,  //set it true, so that user will not able to edit text
    onTap: () async {
      DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime(1960),
          //DateTime.now() - not to allow to choose before today.
          lastDate: DateTime(2501)
      );

      if (pickedDate != null) {
        print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
        String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
        // String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
        print(
            formattedDate); //formatted date output using intl package =>  2021-03-16
        //you can implement different kind of Date Format here according to your requirement

        setState(() {
          dob.text = formattedDate; //set output date to TextField value.
        });
      } else {
        print("Date is not selected");
      }
    }                     ),
                                ),
                                SizedBox(height: 20,),
                                RaisedButton(onPressed: (){
                                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>MainPage()));
                                },child: Text("Let's Get Started",style: TextStyle(color: App_colors.white),),color: App_colors.pink,),




                              ],
                            ),
                          )
                        ],
                      ),
                    )
                ),],
            ),
          ),
        ),
      ),
    );
  }
}
