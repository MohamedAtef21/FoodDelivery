import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../core/logic/helper_method.dart';
import 'pages/cart.dart';
import 'pages/chat.dart';
import 'pages/home.dart';
import 'pages/profile.dart';

class PagesNavView extends StatefulWidget {
  @override
  _PagesNavViewState createState() => _PagesNavViewState();
}

class _PagesNavViewState extends State<PagesNavView> {
  int _selectedIndex = 0;

  static List<Widget> pages = [
    HomePageView(),
    ProfilePageView(),
    CartPageView(),
    ChatPageView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_selectedIndex],
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
          vertical: 10.h,
        ),
        child: Container(
          width: 355.w,
          height: 74.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(22.r),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15.w,
              vertical: 8.h,
            ),
            child: GNav(
              gap: 8,
              textStyle: TextStyle(
                color: Color(0xff09051C),
              ),
              activeColor: getMaterialColor(
                Color(0xff15BE77),
              ),
              iconSize: 24,
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
                vertical: 12.h,
              ),
              tabBackgroundColor: getMaterialColor(
                Color(0xff53E88B).withOpacity(0.1),
              ),
              color: getMaterialColor(
                Color(0xff53E88B).withOpacity(0.5),
              ),
              tabs: [
                GButton(
                  icon: Icons.home_filled,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
                GButton(
                  icon: Icons.shopping_cart,
                  text: 'Cart',
                ),
                GButton(
                  icon: Icons.sms,
                  text: 'Chat',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(
                      () {
                    _selectedIndex = index;
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}