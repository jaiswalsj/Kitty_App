import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(
            color: Color.fromRGBO(234, 239, 243, 1)
        ),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(
          color: Color.fromRGBO(114, 178, 238, 1)
      ),
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
              image: DecorationImage(fit: BoxFit.cover,
                image: AssetImage("assets/images/backgroung.png")
              )
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 500,
                  width: 500,
                  decoration: BoxDecoration(

                      image: DecorationImage(
                        // fit: BoxFit.fill,
                          image: AssetImage("assets/images/2.png")
                        // image: NetworkImage("https://media.istockphoto.com/id/1388013584/photo/cloud-computing-technology-concept-transfer-database-to-cloud-there-is-a-large-cloud-icon.jpg?s=1024x1024&w=is&k=20&c=7I4plf6Thyq0oRlBrNzLkdhPc211xwIbx8-U2bjExzA=",)
                      )
                  ),
                  child: IconButton(icon: Icon(Icons.arrow_back_outlined), onPressed: () {Navigator.pop(context);},color: Colors.white,alignment: Alignment.topLeft,),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Text("Verify OTP",style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: Colors.black),),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Pinput(
                      length: 6,

                      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
                      showCursor: true,
                    ),

                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(onPressed: (){
                      Navigator.pop(context);
                    }, child: Text("Change The Number??",style: TextStyle(color: Colors.pinkAccent),)),
                    IconButton(onPressed: (){}, icon: Icon(Icons.check_rounded,color: Colors.blue,)),
                  ],
                )

              ],
            ),
          ),
        ],
      )
    );
  }
}

