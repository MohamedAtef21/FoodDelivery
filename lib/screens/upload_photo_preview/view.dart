import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/design/app_input.dart';
import 'package:foodninja/screens/core/design/container_image.dart';
import '../core/design/container_back.dart';
import '../core/logic/helper_method.dart';
import '../location/view.dart';
import '../upload_photo/view.dart';

class UploadPhotoPreviewView extends StatelessWidget {
  const UploadPhotoPreviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: UploadPhotoView()),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 25,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Upload Your Photo\nProfile",style: TextStyle(fontSize: 25,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),),
                    SizedBox(height: 19.h),
                    Text("This data will be displayed in your account\nprofile for security",style: TextStyle(fontSize: 12,fontFamily: "Ben",),),
                    SizedBox(height: 59.h),
                    Center(child: ContainerImageView(imageInput: "profile_image", contHeight: 238.h)),
                    SizedBox(height: 166,),
                    Center(child: GestureDetector(onTap: (){
                      navigateTo(context, LocationView());
                    },
                    child:AppInputView(text: "Next"))),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
