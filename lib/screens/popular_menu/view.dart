import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/design/menu.dart';
import '../core/design/search_input.dart';

class PopularMenuView extends StatelessWidget {
  const PopularMenuView({Key? key}) : super(key: key);

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
                      IconButton(
                        onPressed: () {},
                        icon: Icon(CupertinoIcons.bell),
                        color: Color(0xff53E88B),
                      ),
                    ],
                  ),
                  SizedBox(height: 18.h),
                  SearchInputView(),
                  SizedBox(height: 20.h),
                  MenuView(imageInput: "noddle", foodName: "Green Noddle", resturantName: "Noodle Home", price: 15),
                  SizedBox(height: 20.h,),
                  MenuView(imageInput: "pancake", foodName: "Herbal Pancake", resturantName: "Warung Herbal", price: 7),
                  SizedBox(height: 20.h,),
                  MenuView(imageInput: "fruit", foodName: "Fruit Salad", resturantName: "Wijie Resto", price: 5),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
