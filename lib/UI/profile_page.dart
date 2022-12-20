import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
import 'package:untitled1/UI/myAccount_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  File? _image;

  void getImage({required ImageSource source})async{
    final image = await ImagePicker().pickImage(source:source);
    if(image?.path != null){
      setState(() {
        _image = File(image!.path);
      });
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(Images.background))),
            ),
            SafeArea(
                child: Container(
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "Profile",
                      style: TextStyle(fontSize: 20),
                    ),
                    SizedBox(
                      height: 45,
                    ),

                    //this Inkwell is for setting the image
                    InkWell(
                      onTap: (){
                        showDialog<String>(
                          context: context,
                          builder: (BuildContext context) => AlertDialog(
                              title: Text('Upload your profile photo'),
                              content: Container(height: MediaQuery.of(context).size.height/6.5,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(onPressed: (){
                                      getImage(source: ImageSource.gallery);
                                      Navigator.pop(context);
                                    }, child: Text("Set Image from Gallery"),style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(App_colors.lightpink)),),
                                    ElevatedButton(onPressed: (){
                                      getImage(source: ImageSource.camera);
                                      Navigator.pop(context);
                                    }, child: Text("Take your photo"),style:  ButtonStyle(backgroundColor: MaterialStateProperty.all(App_colors.lightpink)),),
                                  ],
                                ),
                              )
                          ),
                        );
                      },
                       child:  _image != null?
                       CircleAvatar(backgroundImage: FileImage(_image!),radius: 50,
                         child: Stack(
                           children: [
                             Positioned(
                               right: 10,
                               top: 2,
                               child: InkWell(
                                 onTap: () {},
                                 child: CircleAvatar(
                                   backgroundColor: Colors.grey,
                                   radius: 12,
                                   child: Stack(
                                     children: [
                                       Icon(
                                         Icons.camera_alt,
                                         color: App_colors.white,
                                         size: 15,
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             )
                           ],
                         ),
                       ):
                       CircleAvatar(
                         backgroundColor: App_colors.tint_grey,
                         radius: 50,
                         backgroundImage: NetworkImage(
                             "https://upload.wikimedia.org/wikipedia/commons/thumb/d/d5/Mona_Lisa_%28copy%2C_Hermitage%29.jpg/224px-Mona_Lisa_%28copy%2C_Hermitage%29.jpg"),
                         child: Stack(
                           children: [
                             Positioned(
                               right: 10,
                               top: 2,
                               child: InkWell(
                                 onTap: () {},
                                 child: CircleAvatar(
                                   backgroundColor: Colors.grey,
                                   radius: 12,
                                   child: Stack(
                                     children: [
                                       Icon(
                                         Icons.camera_alt,
                                         color: App_colors.white,
                                         size: 15,
                                       )
                                     ],
                                   ),
                                 ),
                               ),
                             )
                           ],
                         ),
                       ),
                    ),

                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 300,
                            height: 45,
                            decoration: BoxDecoration(
                                color: App_colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(context,MaterialPageRoute(builder: (context)=>MyAccountPage()) );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16.0, right: 16),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20, width: 20,
                                      child: Icon(
                                        Icons.person_outline_outlined,
                                        color: App_colors.pink,
                                      ),
                                      // child: Image.asset(Images.person_icon,color: App_colors.pink,),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "My Account",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              App_colors.black.withOpacity(0.5)),
                                    ),
                                    SizedBox(
                                      width: 130,
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      color: App_colors.pink,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            decoration: BoxDecoration(
                                color: App_colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16.0, right: 16),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20, width: 20,
                                      child: Icon(
                                        Icons.help_outline,
                                        color: App_colors.pink,
                                      ),
                                      // child: Image.asset(Images.person_icon,color: App_colors.pink,),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Help Center",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              App_colors.black.withOpacity(0.5)),
                                    ),
                                    SizedBox(
                                      width: 130,
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      color: App_colors.pink,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            decoration: BoxDecoration(
                                color: App_colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16.0, right: 16),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20, width: 20,
                                      child: Icon(
                                        Icons.payment_outlined,
                                        color: App_colors.pink,
                                      ),
                                      // child: Image.asset(Images.person_icon,color: App_colors.pink,),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Payment Setting",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              App_colors.black.withOpacity(0.5)),
                                    ),
                                    SizedBox(
                                      width: 102,
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      color: App_colors.pink,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Container(
                            width: 300,
                            height: 45,
                            decoration: BoxDecoration(
                                color: App_colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: InkWell(
                              onTap: () {},
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 16.0, right: 16),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 20, width: 20,
                                      child: Icon(
                                        Icons.facebook,
                                        color: App_colors.pink,
                                      ),
                                      // child: Image.asset(Images.person_icon,color: App_colors.pink,),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text(
                                      "Connect Social Media",
                                      style: TextStyle(
                                          fontSize: 12,
                                          color:
                                              App_colors.black.withOpacity(0.5)),
                                    ),
                                    SizedBox(
                                      width: 70,
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      color: App_colors.pink,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.output_rounded,
                                    color: App_colors.pink,
                                  )),
                              TextButton(
                                  onPressed: () {},
                                  child: Text("Logout",
                                      style: TextStyle(
                                          color: App_colors.pink,
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold)))
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
