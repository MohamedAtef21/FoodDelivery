import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/screens/core/design/text_input.dart';

import '../core/design/app_input.dart';
import '../core/design/container_back.dart';
import '../core/logic/helper_method.dart';
import '../success_password/view.dart';
import '../verification_code/view.dart';

class NewPasswordView extends StatelessWidget {
  const NewPasswordView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //SvgPicture.asset("assets/icons/background2.svg"),
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: VerificationCodeView()),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 25,),
                child: Column(
                  children: [
                    Text("Reset your password\nhere",style: TextStyle(fontSize: 25,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),),
                    SizedBox(height: 19.h),
                    Text("Select which contact details should we\nuse to reset your password",style: TextStyle(fontSize: 12,fontFamily: "Ben",),),
                    SizedBox(height: 38.h),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(14.r,),
                child: Column(
                  children: [
                    TextInputView(labelText: "New Password", obscureText: true, inputType: TextInputType.visiblePassword),
                    SizedBox(height: 20.h,),
                    TextInputView(labelText: "Confirm Password", obscureText: true, inputType: TextInputType.visiblePassword),
                  ],
                ),
              ),
              SizedBox(height: 290.h,),
              Center(
                child: GestureDetector(onTap: (){
                  navigateTo(context, SuccessPasswordView());
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
