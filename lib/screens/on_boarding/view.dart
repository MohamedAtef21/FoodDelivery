import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/design/app_input.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import '../sign_up/view.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  int currentPage = 0;
  List<String> titles = [
    "Find your  Comfort\nFood here",
    "Food Ninja is Where Your\nComfort Food Lives",
  ];
  List<String> descriptions = [
    "Here You Can find a chef or dish for every\ntaste and color. Enjoy!",
    "Enjoy a fast and smooth food delivery at\nyour doorstep",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 56.83.h,
            ),
            SizedBox(
              height: 434.22.h,
              child: PageView(
                physics: const BouncingScrollPhysics(),
                onPageChanged: (value) {
                  currentPage = value;
                  setState(() {});
                },
                children: List.generate(
                  2,
                  (index) => Image.asset(
                    "assets/images/onboarding${currentPage + 1}.png",
                    height: 434.22.h,
                    width: 408.5.w,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 38.95.h),
                  Text(
                    titles[currentPage],
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff09051C),
                    ),
                      textAlign: TextAlign.center
                  ),
                  SizedBox(height: 20.h),
                  Text(
                    descriptions[currentPage],
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xff000000),
                    ),
                      textAlign: TextAlign.center
                  ),
                  SizedBox(height: 42.h),
                  GestureDetector( onTap: (){
                    if(currentPage==1){
                      navigateTo(context, const SignUpView(),false);
                      setState(() {});
                    }else{
                      currentPage++;
                      setState(() {});
                    }
                  },
                      child:  AppInputView(text: "Next",))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
