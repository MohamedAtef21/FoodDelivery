import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationContView extends StatelessWidget {
  final String imageInput,titleInput,hintInput;
  const NotificationContView({Key? key, required this.imageInput, required this.titleInput, required this.hintInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Color(0xff5A6CEA).withOpacity(.4),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 347.w,
        height: 105.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 25,),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/${imageInput}.svg"),
              SizedBox(width: 28.w,),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(titleInput,style: TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.bold,color: Color(0xff09051C)),),
                    SizedBox(height: 8.h,),
                    Text(hintInput,style: TextStyle(fontSize: 14,fontFamily: "Ben",color: Color(0xff3B3B3B)),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
