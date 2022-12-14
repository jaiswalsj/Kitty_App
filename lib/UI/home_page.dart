import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';
import 'package:untitled1/kitty_pages/Deals_Offer_page.dart';
import 'package:untitled1/kitty_pages/fashion_slide_page.dart';
import 'package:untitled1/kitty_pages/kitty_activity_page.dart';
import 'package:untitled1/kitty_pages/kitty_info.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(Images.background))),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset(
                                Images.kitty_App_name,
                                height: 70,
                                width: 200,
                              ),

                              Row(
                                children: [
                                  Container(
                                    width: 20,
                                    height: 30,
                                    child: InkWell(
                                      onTap: () {
                                        // Navigator.push(context, MaterialPageRoute(builder: (context)=>NotificationPage()));
                                      },
                                      child: Container(
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              child: Text(
                                                "3",
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    color: App_colors.white),
                                              ),
                                              right: 3,
                                            )
                                          ],
                                        ),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                              Images.notificationBell),
                                        )),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 20,
                                    height: 30,
                                    child: InkWell(

                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerBar()));
                                      },
                                      child: Container(

                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    Images.sidebar))),

                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          height: 150,
                          width: 500,
                          child: ListView.separated(
                              separatorBuilder:
                                  (BuildContext context, int index) {
                                return Divider(
                                  indent: 9,
                                  color: Colors.white,
                                );
                              },
                              scrollDirection: Axis.horizontal,
                              itemCount: 5,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return KittyInfoPage();
                              }),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Kitty Activities",
                          style: TextStyle(
                              color: App_colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          width: 350,
                          height: 150,
                          decoration: BoxDecoration(
                              color: App_colors.white,
                              borderRadius: BorderRadius.circular(10)),
                          child: ListView.builder(
                              itemCount: 10,
                              shrinkWrap: true,
                              itemBuilder: (context, index) {
                                return KittyActivities();
                              }),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Kitty Finance",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            width: 340,
                            decoration: BoxDecoration(
                                color: App_colors.white,
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(color: App_colors.pink)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Image.asset(Images.purse_icon),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    "Wallet",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 135,
                                  ),
                                  Text(
                                    "Check Balance",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            App_colors.black.withOpacity(0.5)),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: App_colors.pink,
                                    size: 13,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            width: 340,
                            decoration: BoxDecoration(
                              color: App_colors.sky_blue,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Image.asset(
                                    Images.creditCard_unselected,
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    "Kitty Point",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Text(
                                    "Check Balance",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            App_colors.black.withOpacity(0.5)),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: App_colors.pink,
                                    size: 13,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 45,
                            width: 340,
                            decoration: BoxDecoration(
                              color: App_colors.pink,
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Row(
                                children: [
                                  Image.asset(
                                    Images.creditCard_unselected,
                                    height: 20,
                                    width: 20,
                                  ),
                                  SizedBox(
                                    width: 13,
                                  ),
                                  Text(
                                    "Kitty Loan",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 110,
                                  ),
                                  Text(
                                    "Check Balance",
                                    style: TextStyle(
                                        fontSize: 10,
                                        color:
                                            App_colors.black.withOpacity(0.5)),
                                  ),
                                  Icon(
                                    Icons.chevron_right,
                                    color: App_colors.pink,
                                    size: 13,
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Deals & Offers",
                              style: TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  "View all",
                                  style: TextStyle(
                                      fontSize: 10, color: App_colors.sky_blue),
                                )),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "Venue Deals",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 4.2,
                          child: ListView.separated(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return DealImg();
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                indent: 5,
                                color: App_colors.white,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Salon Deals",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 4.5,
                          child: ListView.separated(
                            itemCount: 5,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return DealImg();
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                indent: 5,
                                color: App_colors.white,
                              );
                            },
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Shopping Deals / Coupons",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height / 4.5,
                          child: ListView.separated(
                            itemCount: 10,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return FashionPage();
                            },
                            separatorBuilder: (context, index) {
                              return Divider(
                                indent: 6,
                                color: App_colors.white,
                              );
                            },
                          ),
                        )
                        // Text("hi",style: TextStyle(fontSize: 30),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget DrawerBar(){
    return Drawer(
      child: ListView(

        children: [

          UserAccountsDrawerHeader(accountName: Text("sapan"), accountEmail: Text('sapanemail'),)
        ],
      ),
    );
}
}
