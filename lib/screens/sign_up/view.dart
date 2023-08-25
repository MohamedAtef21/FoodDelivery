import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/design/app_input.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import '../core/design/checkbox.dart';
import '../core/design/text_icon.dart';
import '../log_in/view.dart';
import '../sign_up_process/view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}
bool isCheckVisible = false;

class _SignUpViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background.png",),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsetsDirectional.all(47),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                  SizedBox(height: 65.h),
                  const Text(
                    "Sign Up For Free ",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Ben",
                        fontWeight: FontWeight.bold,
                        color: Color(0xff09051C)),
                  ),
                  const SizedBox(height: 40),
                  const TextInputIconView(labelText: "Anamwp . . |", iconPath: "person", obscureText: false, inputType: TextInputType.name),
                  const TextInputIconView(labelText: "Email", iconPath: "email", obscureText: false, inputType: TextInputType.emailAddress),
                  const TextInputIconView(labelText: "Password", iconPath: "password", obscureText: true, inputType: TextInputType.visiblePassword),
                  const SizedBox(height: 7),
                  Row(
                    children: [
                      SizedBox(
                        height: 22.h,
                        width: 22.w,
                        child: GestureDetector(
                          onTap: (){
                            isCheckVisible = !isCheckVisible;
                            setState(() {});
                          },
                          child:isCheckVisible? CheckBoxView() :null,
                        ),
                      ),
                      SizedBox(width: 8.w,),
                      const Text("Keep Me Signed In")
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      SizedBox(
                        height: 22.h,
                        width: 22.w,
                        child: GestureDetector(
                          onTap: (){
                            isCheckVisible = !isCheckVisible;
                            setState(() {});
                          },
                            child:isCheckVisible? CheckBoxView() :null,
                        ),
                      ),
                      SizedBox(width: 8.w,),
                       Text("Email Me About Special Pricing",)
                    ],
                  ),
                  SizedBox(height: 43.h),
                  GestureDetector(onTap: (){
                    navigateTo(context,  SignUpProcessView());
                  },
                      child: const AppInputView(text: "Create Account")),
                  SizedBox(height: 20.h),
                  GestureDetector(onTap: (){navigateTo(context, LogInView());},
                    child: GradientText("already have an account?",
                        style: const TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.w700,decoration: TextDecoration.underline),
                        colors:const [
                          Color(0xff53E88B),
                          Color(0xff15BE77)
                        ]),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
