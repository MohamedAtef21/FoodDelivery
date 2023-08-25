import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/design/app_input.dart';
import '../../core/design/search_input.dart';
import '../../core/logic/helper_method.dart';
import '../../notification/view.dart';
import '../../order_details/view.dart';

class CartPageView extends StatelessWidget {
  const CartPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 31, top: 60, end: 39),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Find Your\nFavorite Food",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Ben",
                            color: Color(0xff09051C),
                            fontWeight: FontWeight.bold),
                      ),
                      Stack(
                        children: [
                          IconButton(
                            onPressed: () {
                              navigateTo(context, NotificationView());
                            },
                            icon: Icon(CupertinoIcons.bell),
                            color: Color(0xff53E88B),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  SearchInputView(),
                  SizedBox(height: 20.h),
                  GestureDetector(onTap: (){
                    navigateTo(context, OrderDetailsView());
                  },
                      child: AppInputView(text: "Check out"))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
