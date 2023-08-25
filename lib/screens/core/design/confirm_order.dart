import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';

class ConfirmOrderView extends StatelessWidget {
  final String iconInput,title,detailsInput;
   var onClick;
   ConfirmOrderView({Key? key, required this.iconInput, required this.title, required this.detailsInput,required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Color(0xff5A6CEA).withOpacity(.4),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 335.w,
        height: 108.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(start: 12, top: 19,end: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,style: TextStyle(fontSize: 14,fontFamily: "Ben",color: Color(0xff3B3B3B),fontWeight: FontWeight.w400),),
                  GestureDetector(onTap: (){
                    onClick();
                  },
                      child: Text("Edit",style: TextStyle(fontSize: 14,fontFamily: "Ben",color: Color(0xff15BE77),fontWeight: FontWeight.w400),),),
                ],
              ),
              SizedBox(height: 14.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset("assets/icons/${iconInput}.svg"),
                  Text(detailsInput,style: TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.w800),)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
