import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
import 'package:untitled1/UI/home_page.dart';
import 'package:untitled1/UI/myAccount_page.dart';
import 'package:untitled1/UI/my_kitty_page.dart';
import 'package:untitled1/UI/profile_page.dart';
import 'package:untitled1/UI/wallet_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  List pages = [
    HomePage(),
    MyKittyPage(),
    WalletPage(),
    ProfilePage()
  ];

  int currentIndex = 0;
  void onTap(int index){
    setState(() {
      this.currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:App_colors.transp,
      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 10,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: App_colors.pink,
        unselectedItemColor:App_colors.black,
        selectedFontSize: 12.0,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        elevation: 0.0,
//   icon: Image.asset(_pageIndex==0?'assets/images/home_selected.JPG':'assets/images/home_unselected.JPG')
        items: [
          BottomNavigationBarItem(
              icon:  Image.asset(currentIndex==0?Images.home_icon_selected:Images.home_icon_unselected,height: 20,width: 20,),label: "Home"),

          BottomNavigationBarItem(icon: Image.asset(currentIndex==0?Images.App_logo_icon:Images.App_logo_icon,height: 20,width: 20,),label: "My Kitties"),
          BottomNavigationBarItem(icon: Image.asset(currentIndex==2?Images.creditCard_selected:Images.creditCard_unselected,height: 20,width: 20,),label: "Wallet"),
          BottomNavigationBarItem(icon: Image.asset(currentIndex==3?Images.person_icon_selected:Images.person_icon_unselected,height: 20,width: 20,),label: "Profile"),

        ],
      ),

    );
  }
}
