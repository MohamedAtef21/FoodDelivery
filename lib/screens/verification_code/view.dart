import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/design/app_input.dart';
import '../core/design/container_back.dart';
import '../core/logic/helper_method.dart';
import '../forget_password/view.dart';
import '../new_password/view.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: ForgetPasswordView()),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 25,),
                child: Column(
                  children: [
                    Text("Enter 4-digit\nVerification code",style: TextStyle(fontSize: 25,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),),
                    SizedBox(height: 19.h),
                    Text("Code send to +6282045**** . This code will\nexpired in 01:30",style: TextStyle(fontSize: 12,fontFamily: "Ben",),),
                    SizedBox(height: 38.h),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(14.r),
              child: Container(
                width: 347.w,
                height: 103.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.r),
                  color: Colors.blueAccent
                ),
              ),
              ),
              SizedBox(height: 322.h,),
              Center(
                child: GestureDetector(onTap: (){
                  navigateTo(context, NewPasswordView());
                },
                    child: const AppInputView(text: "Next")),
              ),
            ],
          )
        ],
      ),
    );
  }
}
