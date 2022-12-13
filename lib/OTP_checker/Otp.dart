import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
import 'package:untitled1/UI/welcomeScreen.dart';

class OtpPage extends StatelessWidget  {
  final _otpKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    TextEditingController _otpController = new TextEditingController();
    final defaultPinTheme = PinTheme(
      width: 38,
      height: 38,
      textStyle: TextStyle(
          fontSize: 20,
          color: Color.fromRGBO(30, 60, 87, 1),
          fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: App_colors.pink),
        borderRadius: BorderRadius.circular(10),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration?.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );

    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(Images.background))),
        ),
        SingleChildScrollView(
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height/1.55,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          // fit: BoxFit.fill,
                          image: AssetImage(Images.otpScreen)
                          // image: NetworkImage("https://media.istockphoto.com/id/1388013584/photo/cloud-computing-technology-concept-transfer-database-to-cloud-there-is-a-large-cloud-icon.jpg?s=1024x1024&w=is&k=20&c=7I4plf6Thyq0oRlBrNzLkdhPc211xwIbx8-U2bjExzA=",)
                          )),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_outlined,
                      color: App_colors.pink,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    color: Colors.white,
                    alignment: Alignment.topLeft,
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: MediaQuery.of(context).size.width/1.05,
                  height: MediaQuery.of(context).size.height/3.38,
                  decoration: BoxDecoration(
                    color: Colors.white,
                      borderRadius: BorderRadius.only(topRight:Radius.circular(40))

                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 180,top: 10),
                        child: Text(
                          "Verify OTP",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Form(
                        key:_otpKey ,
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Pinput(

                                controller: _otpController,
                                length: 6,
                                defaultPinTheme: defaultPinTheme,
                                pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                                showCursor: true,
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 20,
                              height: 30,
                              child: InkWell(
                                onTap: (){

                                    Navigator.pushReplacement(context,
                                        MaterialPageRoute(builder: (context) =>
                                            WelcomeScreen()));
                                  },
                                child: Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(Images.rightArrow)
                                    )
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                "Change The Number??",
                                style: TextStyle(color: Colors.pinkAccent),
                              )),

                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
