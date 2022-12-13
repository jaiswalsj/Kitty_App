import 'package:flutter/material.dart';
import 'package:untitled1/CommonUses/App_colors.dart';
import 'package:untitled1/CommonUses/images.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(fit: BoxFit.cover,
                    image: AssetImage(Images.background)
                )
            ),
          ),
          Column(
            children: [
              Center(
                child: Text("Notification Page",style: TextStyle(fontSize: 80,color: App_colors.dark_violate),),
              )
            ],
          )
        ],
      ),
    );
  }
}

//   Widget NotificationPage(){
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             height: MediaQuery.of(context).size.height,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//               image: DecorationImage(fit: BoxFit.cover,
//                 image: AssetImage(Images.background)
//               )
//             ),
//           ),
//           Column(
//             children: [
//               Center(
//                 child: Text("Notification Page",style: TextStyle(fontSize: 80,color: App_colors.dark_violate),),
//               )
//             ],
//           )
//         ],
//       ),
//     );
// }
// }
