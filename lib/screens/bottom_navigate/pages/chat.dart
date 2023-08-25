import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/design/chat_item.dart';
import '../../core/design/container_back.dart';
import '../view.dart';

class ChatPageView extends StatelessWidget {
  const ChatPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: PagesNavView()),
              SizedBox(height: 20.h),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 20, end: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Chat",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Ben",
                          color: Color(0xff09051C),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 12.h,),
                    ChatItemView(chatName: "Anamwp", chatDesc: "Your Order Just Arrived!", chatImage: "chat1"),
                    SizedBox(height: 20.h,),
                    ChatItemView(chatName: "Guy Hawkins", chatDesc: "Your Order Just Arrived!", chatImage: "chat2"),
                    SizedBox(height: 20.h,),
                    ChatItemView(chatName: "Leslie Alexander", chatDesc: "Your Order Just Arrived!", chatImage: "chat3"),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


// SizedBox(
//   height: 500.h,
//   child: ListView.separated(
//       itemBuilder: (context, index) => ChatItemView(
//         chatName: ,
//       ),
//       separatorBuilder: (context, index) => Container(
//             height: 20.h,
//           ),
//       itemCount: 3),
// ),