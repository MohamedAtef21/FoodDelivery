import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../bottom_navigate/view.dart';
import '../core/design/app_input.dart';
import '../core/design/text_input.dart';
import '../forget_password/view.dart';

class LogInView extends StatelessWidget {
  const LogInView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background.png", height: double.infinity, fit: BoxFit.fill,),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsetsDirectional.all(47),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset("assets/images/main_logo.png"),
                  GradientText(
                    "FoodNinja",
                    colors: const [
                      Color(0xff53E88B),
                      Color(0xff15BE77),
                    ],
                    style: const TextStyle(
                      fontSize: 40,
                      fontFamily: "Viga",
                    ),
                  ),
                  const Text(
                    "Deliever Favorite Food",
                    style: TextStyle(
                        fontSize: 13,
                        color: Color(0xff09051C),
                        fontWeight: FontWeight.bold,
                        fontFamily: "Inter"),
                  ),
                  SizedBox(height: 60.h),
                  const Text(
                    "Login To Your Account",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Ben",
                        fontWeight: FontWeight.bold,
                        color: Color(0xff09051C)),
                  ),
                  const SizedBox(height: 40),
                  const TextInputView(
                      labelText: "Email",
                      obscureText: false,
                      inputType: TextInputType.emailAddress),
                  const TextInputView(
                      labelText: "Password",
                      obscureText: true,
                      inputType: TextInputType.visiblePassword),
                  SizedBox(height: 4.h),
                  const Text(
                    "Or Continue With",
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: "Ben",
                        fontWeight: FontWeight.bold,
                        color: Color(0xff09051C)),
                  ),
                  SizedBox(height: 20.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape:RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.r),
                          ),
                          backgroundColor: const Color(0xffF4F4F4),
                            fixedSize: const Size(152, 57)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/facebook.svg"),
                            SizedBox(width: 13.w,),
                            const Text("Facebook"),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.w),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.r),
                            ),
                            backgroundColor: const Color(0xffF4F4F4),
                          fixedSize: const Size(152, 57)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/icons/google.svg"),
                            SizedBox(width: 13.w,),
                            const Text("Google"),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(onTap: (){
                    navigateTo(context, const ForgetPasswordView());
                  },
                    child: GradientText("Forgot Your Password?",
                        style: const TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.w700,decoration: TextDecoration.underline),
                        colors:const [
                      Color(0xff53E88B),
                      Color(0xff15BE77)
                    ]),
                  ),
                  SizedBox(height: 54.h),
                  GestureDetector(onTap: (){
                    navigateTo(context, PagesNavView());
                  },child: const AppInputView(text: "Login",)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
