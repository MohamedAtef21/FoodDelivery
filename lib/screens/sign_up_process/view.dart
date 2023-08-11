import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/design/text_input.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import '../core/design/app_input.dart';
import '../core/design/container_back.dart';
import '../payment_method/view.dart';
import '../sign_up/view.dart';

class SignUpProcessView extends StatelessWidget {
  const SignUpProcessView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset("assets/images/background2.png"),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContainerBackView(onPressDest: SignUpView()),
                SizedBox(height: 20.h,),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 25,),
                  child: Column(
                    children: [
                      Text("Fill in your bio to get\nstarted",style: TextStyle(fontSize: 25,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),),
                      SizedBox(height: 19.h),
                      Text("This data will be displayed in your account\nprofile for security",style: TextStyle(fontSize: 12,fontFamily: "Ben",),),
                      SizedBox(height: 20.h),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(14.r),
                  child: Column(
                    children: [
                      TextInputView(labelText: "First Name", obscureText: false, inputType: TextInputType.name),
                      TextInputView(labelText: "Last Name", obscureText: false, inputType: TextInputType.name),
                      TextInputView(labelText: "Mobile Number", obscureText: false, inputType: TextInputType.phone),
                    ],
                  ),
                ),
                SizedBox(height: 220.h),
                Center(
                  child: GestureDetector(onTap: (){
                    navigateTo(context, PaymentMethodView());
                  },
                      child: const AppInputView(text: "Next")),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
