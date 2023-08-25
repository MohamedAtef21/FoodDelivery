import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatItemView extends StatelessWidget {
  final String chatName,chatDesc,chatImage;
  const ChatItemView({Key? key, required this.chatName, required this.chatDesc, required this.chatImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Color(0xff5A6CEA).withOpacity(.4),
      borderRadius: BorderRadius.circular(15),
      child: Row(
        children: [
          SizedBox(height: 10.h,),
          Container(
            width: 62.w,
            height: 62.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("assets/images/${chatImage}.png"),
          ),
          SizedBox(width: 18.w,),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(chatName,style: TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.bold),),
              SizedBox(height: 8.h,),
              Text(chatDesc,style: TextStyle(fontSize: 14,fontFamily: "Ben"),),
            ],
          ),
          ),
          Text("10:00 "),
        ],
      ),
    );
  }
}
