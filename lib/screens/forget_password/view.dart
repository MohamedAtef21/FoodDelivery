import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/design/text_icon.dart';

import '../core/design/app_input.dart';
import '../core/design/container_back.dart';
import '../core/logic/helper_method.dart';
import '../log_in/view.dart';
import '../verification_code/view.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: LogInView()),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 25,),
                child: Column(
                  children: [
                    Text("Forgot password?",style: TextStyle(fontSize: 25,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),),
                    SizedBox(height: 19.h),
                    Text("Select which contact details should we\nuse to reset your password",style: TextStyle(fontSize: 12,fontFamily: "Ben",),),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(14.r),
              child: Column(
                children: [
                  TextInputIconView(labelText: "Via sms:", obscureText: true, inputType: TextInputType.emailAddress, iconPath: "sms"),
                  SizedBox(height: 20.h,),
                  TextInputIconView(labelText: "Via email:", obscureText: true, inputType: TextInputType.emailAddress, iconPath: "email2"),
                ],
              ),
              ),
              SizedBox(height: 269.h,),
              Center(
                child: GestureDetector(onTap: (){
                  navigateTo(context, VerificationCodeView());
                },
                    child: const AppInputView(text: "Next")),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
