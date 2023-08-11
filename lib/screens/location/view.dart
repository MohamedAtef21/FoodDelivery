import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/screens/core/design/app_input.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import '../core/design/container_back.dart';
import '../sign_up_success/view.dart';
import '../upload_photo_preview/view.dart';

class LocationView extends StatelessWidget {
  const LocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: UploadPhotoPreviewView()),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 25,),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Set Your Location ",style: TextStyle(fontSize: 25,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),),
                    SizedBox(height: 19.h),
                    Text("This data will be displayed in your account\nprofile for security",style: TextStyle(fontSize: 12,fontFamily: "Ben",),),
                    SizedBox(height: 20.h,),
                    Row(
                      children: [
                        IconButton(onPressed: (){}, icon: SvgPicture.asset("assets/icons/location.svg"),),
                        Text("Your Location",style: TextStyle(fontSize: 15,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),),
                      ],
                    ),
                    SizedBox(height: 33.h,),
                    Center(child: TextButton(onPressed: (){},
                      style: TextButton.styleFrom(
                        shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(15),
                        ),
                        backgroundColor: Color(0xffF6F6F6),
                        fixedSize: Size(322.w, 57.h)
                      ),
                      child: Text("Set Location",style: TextStyle(fontSize: 14,fontFamily: "Ben",color: Color(0xff09051C),fontWeight: FontWeight.bold),
                      ),
                    ),
                    ),
                    SizedBox(height: 338.h,),
                    Center(child: GestureDetector(onTap: (){navigateTo(context, SignUpSuccessView());},child: AppInputView(text: "Next"))),
                  ],
                ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
