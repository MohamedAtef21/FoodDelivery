import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/screens/core/design/menu.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';

import '../../core/design/restaurant.dart';
import '../../core/design/search_input.dart';
import '../../core/design/special_deal_container.dart';
import '../../notification/view.dart';
import '../../popular_menu/view.dart';
import '../../popular_resturant/view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          //SvgPicture.asset("assets/icons/pattern.svg",fit: BoxFit.scaleDown,alignment: AlignmentDirectional.topEnd,),
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
                  SpecialContainerView(),
                  SizedBox(height: 25.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nearest Restaurant",style: TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.bold),),
                      GestureDetector(onTap: (){
                        navigateTo(context, PopularRestaurantView());
                      },
                      child: Text("View More",style: TextStyle(fontSize: 12,fontFamily: "Ben",color: Color(0xffFF7C32)),))
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  SizedBox(
                    height: 147.h,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Row(
                          children: [
                            RestaurantView(imageInput: "vegan",titleInput: "Vegan Resto"),
                            SizedBox(width: 20.w,),
                            RestaurantView(imageInput: "healthy",titleInput: "Healthy Food"),
                            SizedBox(width: 20.w,),
                            RestaurantView(imageInput: "goodfood",titleInput: "Good Food"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Popular Menu",style: TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.bold),),
                      GestureDetector(onTap: (){
                        navigateTo(context, PopularMenuView());
                      },
                      child: Text("View More",style: TextStyle(fontSize: 12,fontFamily: "Ben",color: Color(0xffFF7C32)),))
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  MenuView(imageInput: "noddle", foodName: "Green Noddle", resturantName: "Noodle Home", price: 15),
                  SizedBox(height: 20.h,),
                  MenuView(imageInput: "pancake", foodName: "Herbal Pancake", resturantName: "Warung Herbal", price: 7),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



