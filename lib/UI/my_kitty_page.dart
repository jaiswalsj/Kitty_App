import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';

class MyKittyPage extends StatefulWidget {
  const MyKittyPage({Key? key}) : super(key: key);

  @override
  State<MyKittyPage> createState() => _MyKittyPageState();
}

class _MyKittyPageState extends State<MyKittyPage> {
  final _searchKitty = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text("My Kitties",style: TextStyle(
                            fontSize: 20
                          ),)
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),

                      //Search and create Kitty Row
                      Row(
                     children: [
                       SearchKitty(),

                       const Divider(indent: 10,color: App_colors.white,),
                       CreateKitty(),

                     ],
                   ),
                      const SizedBox(height: 15,),
                      const Text("Your Kitties",style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),),
                      const SizedBox(height: 5,),
                      KittyNames(),
                      const SizedBox(height: 20,),
                      const Text("Kitty Themes",style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),),
                      const SizedBox(height: 5,),
                      ThemesParty(),
                      const SizedBox(height: 20,),
                      const Text("Kitty Games",style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16),),
                      const SizedBox(height: 5,),
                      Games(),


                      const SizedBox(height: 20,),
                      const Text(
                        "Kitty Finance",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
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
                                const SizedBox(
                                  width: 13,
                                ),
                                const Text(
                                  "Wallet",
                                  style: TextStyle(fontSize: 13),
                                ),
                                const SizedBox(
                                  width: 135,
                                ),
                                Text(
                                  "Check Balance",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color:
                                      App_colors.black.withOpacity(0.5)),
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  color: App_colors.pink,
                                  size: 13,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
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
                                const SizedBox(
                                  width: 13,
                                ),
                                const Text(
                                  "Kitty Point",
                                  style: TextStyle(fontSize: 13),
                                ),
                                const SizedBox(
                                  width: 110,
                                ),
                                Text(
                                  "Check Balance",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color:
                                      App_colors.black.withOpacity(0.5)),
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  color: App_colors.pink,
                                  size: 13,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
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
                                const SizedBox(
                                  width: 13,
                                ),
                                const Text(
                                  "Kitty Loan",
                                  style: TextStyle(fontSize: 13),
                                ),
                                const SizedBox(
                                  width: 110,
                                ),
                                Text(
                                  "Check Balance",
                                  style: TextStyle(
                                      fontSize: 10,
                                      color:
                                      App_colors.black.withOpacity(0.5)),
                                ),
                                const Icon(
                                  Icons.chevron_right,
                                  color: App_colors.pink,
                                  size: 13,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Deals & Offers",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                          TextButton(
                              onPressed: () {},
                              child: const Text(
                                "View all",
                                style: TextStyle(
                                    fontSize: 10, color: App_colors.sky_blue),
                              )),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        "Venue Deals",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Deals(),

                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Salon Deals",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                     Deals(),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        "Shopping Deals / Coupons",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                     Shopping(),
                      // Text("hi",style: TextStyle(fontSize: 30),)
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget SearchKitty(){
    return  InkWell(
      onTap: (){},
      child: Container(
        height: MediaQuery.of(context).size.height/15,
        width: MediaQuery.of(context).size.width/2.3,
        decoration: BoxDecoration(
            color: App_colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: App_colors.pink)
        ),
        child: Stack(
          children: [
            Align(
              child: TextFormField(textAlign:TextAlign.center,controller: _searchKitty,
                decoration: const InputDecoration(
                  hintText: "Search an existing kitty",hintStyle: TextStyle(fontSize: 12,),
                  border: InputBorder.none
                ),
              ),
            ),
            Align(
                alignment:Alignment.topRight,
                child: InkWell(
                    onTap: (){},
                    child: const Icon(Icons.search,color: App_colors.pink,))),
            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: Align(
            //       alignment:Alignment.bottomLeft,
            //       child: Text("Search an existing kitty",style: TextStyle(color: App_colors.tint_grey,fontSize: 12),)),
            // )
          ],
        ),
      ),
    );
}

Widget CreateKitty(){
    return InkWell(
      onTap: (){},
      child: Container(
        height: MediaQuery.of(context).size.height/15,
        width: MediaQuery.of(context).size.width/2.3,
        decoration: BoxDecoration(
          color: App_colors.pink,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            const Align(
                alignment:Alignment.topRight,
                child: Icon(Icons.add,color: App_colors.white,)),
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Align(
                  alignment:Alignment.bottomLeft,
                  child: Text("Create a New Kitty",style: TextStyle(color: App_colors.white,fontSize: 12),)),
            )
          ],
        ),
      ),
    );
}

    Widget KittyNames(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/6.8,
      child: ListView.separated(itemBuilder: (context,index){return Container(
        height: MediaQuery.of(context).size.height/8,
        width: MediaQuery.of(context).size.width/3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(Images.drinking_zone_img),
            )

        ),
        child: Stack(fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: App_colors.black.withOpacity(0.7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Kitty Name",style: TextStyle(fontSize: 10,color: App_colors.white),),
                  const SizedBox(height: 5,),
                  Row(
                    children: [
                      Text("01/08/22",style: TextStyle(color: App_colors.white.withOpacity(0.6),fontSize: 8),),
                      Text("-",style: TextStyle(color: App_colors.white.withOpacity(0.6),)),
                      Text("01/06/23",style: TextStyle(color: App_colors.white.withOpacity(0.6),fontSize: 8),),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      CircleAvatar(backgroundImage: AssetImage(Images.demo_pic),radius: 12,),
                      const SizedBox(width: 5,),
                      Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Text("First Name",style: TextStyle(color: App_colors.white.withOpacity(0.7),fontSize: 12),),
                          Text("Organiser",style: TextStyle(color: App_colors.white.withOpacity(0.5),fontSize: 10),)

                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      );}, separatorBuilder: (context,index){return const Divider(indent: 5,color: App_colors.white,);}, itemCount: 5,scrollDirection: Axis.horizontal,shrinkWrap: true,),
    );
    }

    Widget ThemesParty(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/8,
      child: ListView.separated(itemBuilder: (context,index){return Container(
        height: MediaQuery.of(context).size.height/8,
        width: MediaQuery.of(context).size.width/3.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(fit: BoxFit.cover,
              image: AssetImage(Images.party
              ),
            )

        ),
        child: Stack(fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: App_colors.black.withOpacity(0.7),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 65, 0, 0),
              child:Text("Retro",style: TextStyle(fontWeight: FontWeight.bold,color: App_colors.white.withOpacity(0.8)),)
            )
          ],
        ),
      );}, separatorBuilder: (context,index){return const Divider(indent: 5,color: App_colors.white,);}, itemCount: 5,scrollDirection: Axis.horizontal,shrinkWrap: true,),
    );
    }

    Widget Games(){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/8,
      child: ListView.separated(itemBuilder: (context,index){return Container(
        height: MediaQuery.of(context).size.height/8,
        width: MediaQuery.of(context).size.width/3.8,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(fit: BoxFit.cover,
              image: AssetImage(Images.playgames
              ),
            )

        ),
        child: Stack(fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: App_colors.black.withOpacity(0.7),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(15, 65, 0, 0),
                child:Text("Teen Patti",style: TextStyle(fontWeight: FontWeight.bold,color: App_colors.white.withOpacity(0.8)),)
            )
          ],
        ),
      );}, separatorBuilder: (context,index){return const Divider(indent: 5,color: App_colors.white,);}, itemCount: 5,scrollDirection: Axis.horizontal,shrinkWrap: true,),
    );
    }

    Widget Deals(){
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4.2,
      child: ListView.separated(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            width: MediaQuery.of(context).size.width/1.09,
            height: MediaQuery.of(context).size.height/4,
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover,
                  image: AssetImage(Images.drinking_zone_img),

                ),
                borderRadius: BorderRadius.circular(15)
            ),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width/1.09,
                  height: MediaQuery.of(context).size.height/4.2,

                  decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(15),
                    color: App_colors.black.withOpacity(0.5),
                  ),

                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text("Name of Venue",style: TextStyle(color: App_colors.white,fontSize: 12),),
                              const SizedBox(height: 8,),
                              Text("Location",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                              const SizedBox(height: 15,),
                              const Text("DEAL",style: TextStyle(color: App_colors.white,fontSize: 20,fontWeight: FontWeight.bold),),

                              const SizedBox(height: 20,),
                              Row(children: [
                                CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_pic),radius: 12,),
                                CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_img),radius: 12,),
                                CircleAvatar(backgroundColor: App_colors.white,backgroundImage:AssetImage(Images.demo_pic),radius: 12,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("4.5/5 Ratings",style: TextStyle(fontSize: 10,color: App_colors.white.withOpacity(0.5)),),
                                      Text("30 People reviewed this place",style: TextStyle(fontSize: 10,color: App_colors.white.withOpacity(0.5)),),

                                    ],
                                  ),
                                )
                              ],)
                              // Text("Kitty 3/8",style: TextStyle(color: App_colors.white.withOpacity(0.8),fontSize: 10),),
                            ],),
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: AlignmentDirectional.topStart ,
                                  height: 60,width: 60,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(fit: BoxFit.cover,
                                          image: AssetImage(Images.demo_pic)
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: App_colors.white.withOpacity(0.7))
                                  ),
                                ),
                                const Icon(Icons.chevron_right,color: App_colors.white,size: 20,)
                              ],
                            )
                          ],
                        )
                      ],
                    ),

                  ],
                ),


              ],
            ),

          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            indent: 5,
            color: App_colors.white,
          );
        },
      ),
    );
    }

    Widget Shopping(){
    return   Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4.5,
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            height:MediaQuery.of(context).size.height/4.7,width: MediaQuery.of(context).size.width/3.5,
            child: Stack(
              children: <Widget>[
                Container(
                  height:100,width: 100,
                  decoration: BoxDecoration(color: App_colors.background,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(Images.faishone)
                      )
                  ),

                ),
                Positioned(
                  left: 15.0,
                  top: 65,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: const CircleAvatar(
                      backgroundColor: App_colors.white,
                      radius: 35,
                      child: Text("ZARA",style: TextStyle(color: App_colors.black,fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            indent: 6,
            color: App_colors.white,
          );
        },
      ),
    );
    }
}
