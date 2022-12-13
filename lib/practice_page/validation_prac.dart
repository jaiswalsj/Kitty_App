import 'package:flutter/material.dart';
import 'package:untitled1/UI/home_page.dart';

class FormValidationExample extends StatelessWidget with InputValidationMixin {
  final formGlobalKey = GlobalKey < FormState > ();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Form validation example'),
        ),
        body:
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Form(
              key: formGlobalKey,
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  TextFormField(
                    decoration: InputDecoration(
                        labelText: "Email"
                    ),
                    validator: (email) {
                      if (isEmailValid(email!)) return null;
                      else
                        return 'Enter a valid email address';
                    },
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Password",
                    ),
                    maxLength: 6,
                    obscureText: true,
                    validator: (name) {
                      if (isPasswordValid(name!)) return null;
                      else
                        return 'Enter a valid password';
                    },
                  ),
                  const SizedBox(height: 50),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(

                      labelText: "Phone Number",
                    ),
                    // maxLength: ,
                    // obscureText: true,
                    validator: (number) {
                      if (isPhoneNumberValid(number!)) return null;
                      else
                        return 'Enter a valid number';
                    },
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                      onPressed: () {
                        if (formGlobalKey.currentState!.validate()) {
                          formGlobalKey.currentState!.save();
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          // use the email provided here
                        }

                      },
                      child: Text("Submit"))
                ],
              ),
            ),
          ),
        ));
  }
}

mixin InputValidationMixin {


  bool isPasswordValid(String password) => password.length == 6;
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