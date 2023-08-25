import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';

import '../core/design/restaurant.dart';
import '../core/design/search_input.dart';
import '../resturant_details/view.dart';

class PopularRestaurantView extends StatelessWidget {
  const PopularRestaurantView({Key? key}) : super(key: key);

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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(onTap: (){
                      navigateTo(context, ResturantDetailsView());
                    },
                    child: RestaurantView(imageInput: "vegan",titleInput: "Vegan Resto")),
                    RestaurantView(imageInput: "healthy",titleInput: "Healthy Food"),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RestaurantView(imageInput: "goodfood",titleInput: "Good Food"),
                    RestaurantView(imageInput: "smartfood",titleInput: "Smart Resto"),
                  ],
                ),
                SizedBox(height: 20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RestaurantView(imageInput: "veganfood",titleInput: "Vegan Resto"),
                    RestaurantView(imageInput: "healthfood",titleInput: "Healthy Food"),
                  ],
                ),
                SizedBox(height: 20.h),
              ],
            ),
            ),
          )
        ],
      ),
    );
  }
}
