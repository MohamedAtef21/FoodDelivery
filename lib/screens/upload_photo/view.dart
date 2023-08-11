import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/design/container_image.dart';
import '../core/design/app_input.dart';
import '../core/design/container_back.dart';
import '../core/logic/helper_method.dart';
import '../sign_up_process/view.dart';
import '../upload_photo_preview/view.dart';

class UploadPhotoView extends StatelessWidget {
  const UploadPhotoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: SignUpProcessView()),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 25,),
                child: Column(
                  children: [
                    Text("Upload Your Photo\nProfile",style: TextStyle(fontSize: 25,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),),
                    SizedBox(height: 19.h),
                    Text("This data will be displayed in your account\nprofile for security",style: TextStyle(fontSize: 12,fontFamily: "Ben",),),
                    SizedBox(height: 20.h),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(14.r),
              child: Column(
                children: [
                  ContainerImageView(imageInput: "from_gallery", contHeight: 129.h),
                  SizedBox(height: 20.h,),
                  ContainerImageView(imageInput: "take_photo", contHeight: 129.h),
                ],
              ),
              ),
              SizedBox(height: 165.h),
              Center(
                child: GestureDetector(onTap: (){
                  navigateTo(context, UploadPhotoPreviewView());
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
