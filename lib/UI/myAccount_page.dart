import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
import 'package:untitled1/UI/profile_page.dart';

class MyAccountPage extends StatelessWidget with InputValidationMixin{

  TextEditingController _username = new TextEditingController();
  TextEditingController _bday = new TextEditingController();
  TextEditingController _email = new TextEditingController();
  TextEditingController _phone = new TextEditingController();
  final _keypage = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: GestureDetector(
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
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
            child: SafeArea(
              child: Center(
                child: Form(
                  key: _keypage,
                  child: Column(

                    children: [

                      SizedBox(height: 10,),
                      Text("My Account",style: TextStyle(fontSize: 20),),
                      SizedBox(height: 50,),
                      Padding(
                        padding: EdgeInsets.only(right: 40,left: 40),

                        child: TextFormField(
                          style: TextStyle(fontSize: 15),
                          controller: _username,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: App_colors.white,
                            hintText: "Name",

                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: App_colors.white
                              ),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(
                                color: App_colors.white
                              )

                            ),

                            contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal:30),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: EdgeInsets.only(right: 40,left: 40),

                        child: TextFormField(

                          controller: _bday,
                          style: TextStyle(fontSize: 15),
                          validator:  (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter some text';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: App_colors.white,
                            hintText: "Birthday",

                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: App_colors.white
                                ),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: App_colors.white
                                )

                            ),

                            contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal:30),
                          ),
                            readOnly: true,  //set it true, so that user will not able to edit text
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2101)
                              );

                              if (pickedDate != null) {
                                print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
                                // String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
                                print(
                                    formattedDate); //formatted date output using intl package =>  2021-03-16
                                //you can implement different kind of Date Format here according to your requirement
                                _bday.text = formattedDate; //set output date to TextField value.
                                // setState(() {
                                //   _bday.text = formattedDate; //set output date to TextField value.
                                // });

                              } else {
                                print("Date is not selected");
                              }
                            }
                        ),
                      ),

                      SizedBox(height: 5,),
                      Padding(
                        padding: EdgeInsets.only(right: 40,left: 40),

                        child: TextFormField(
                          controller: _email,
                          style: TextStyle(fontSize: 15),
                          validator: (email){
                            if(isEmailValid(email!))return null;
                            else{
                              return "Enter valid Email";
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: App_colors.white,
                            hintText: "Email Id",

                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: App_colors.white
                                ),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: App_colors.white
                                )

                            ),

                            contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal:30),
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      Padding(
                        padding: EdgeInsets.only(right: 40,left: 40),

                        child: TextFormField(

                          controller: _phone,
                          style: TextStyle(fontSize: 15),
                          keyboardType: TextInputType.number,
                          validator: (number){
                            if(isPhoneNumberValid(number!))return null;
                            else{
                              return "Enter valid Number";
                            }
                          },
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            filled: true,
                            fillColor: App_colors.white,
                            hintText: "Phone Number",

                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: App_colors.white
                                ),
                                borderRadius: BorderRadius.circular(5)
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide: BorderSide(
                                    color: App_colors.white
                                )

                            ),

                            contentPadding: EdgeInsets.symmetric(vertical: 2,horizontal:30),
                          ),
                        ),
                      ),
                      SizedBox(height: 40,),
                      RaisedButton(onPressed: (){
                        if(_keypage.currentState!.validate()){
                         _keypage.currentState!.save();
                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                        }

                      },color: App_colors.pink,child: Padding(
                        padding: const EdgeInsets.only(right: 30,left: 30),
                        child: Text("Update",style: TextStyle(color: App_colors.white),),
                      ),)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }
}

mixin InputValidationMixin {


  // bool isPasswordValid(String password) => password.length == 6;
  bool isEmailValid(String email) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex =  RegExp(pattern.toString());
    return regex.hasMatch(email);
  }

  bool isPhoneNumberValid(String number){

    Pattern pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    RegExp regex = RegExp(pattern.toString());
    return regex.hasMatch(number);
  }
}
