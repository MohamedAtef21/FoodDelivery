import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/design/app_input.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SignUpSuccessView extends StatelessWidget {
  const SignUpSuccessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background.png"),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/congrats.png",height: 162.h,width: 157.w,),
                SizedBox(height: 33.h,),
                GradientText("Congrats!", colors:const [
                  Color(0xff53E88B),
                  Color(0xff15BE77),
                ],
                  style: const TextStyle(fontSize: 30,fontFamily: "Viga",),
                ),
                SizedBox(height: 12.h,),
                Text("Your Profile Is Ready To Use",style: TextStyle(fontSize: 23,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),),
                SizedBox(height: 192.h,),
                AppInputView(text: "Try Order")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
