import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../bottom_navigate/view.dart';
import '../core/design/container_back.dart';
import '../core/design/container_notification.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

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
              SizedBox(height: 20.h,),
              Padding(padding: EdgeInsetsDirectional.only(start: 25, end: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Notification",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Ben",
                        color: Color(0xff09051C),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.h,),
                  NotificationContView(imageInput: "checked",titleInput: "Your order has been taken by\nthe driver",hintInput: "Recently",),
                  SizedBox(height: 20.h,),
                  NotificationContView(imageInput: "money",titleInput: "Topup for \$100 was successful",hintInput: "10.00 Am",),
                  SizedBox(height: 20.h,),
                  NotificationContView(imageInput: "xbutton",titleInput: "Your order has been canceled",hintInput: "22 Juny 2021",),
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
