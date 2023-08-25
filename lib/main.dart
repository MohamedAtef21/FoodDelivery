import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import 'package:foodninja/screens/map/view.dart';
import 'package:foodninja/screens/resturant_details/view.dart';
import 'screens/splachscreen/view.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return MaterialApp(
          title: 'Food Ninja',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            //scaffoldBackgroundColor: const Color(0xffFFFFFF),
            fontFamily: "Ben",
            primarySwatch: getMaterialColor(const Color(0xff53E88B)),
          ),
          home: Scaffold(
            body: PageView(
              children: [
                SplachScreenView(),
                //MapSample(),
                //ResturantDetailsView(),
              ],
            ),
          ),
        );
      },
    );
  }
}
