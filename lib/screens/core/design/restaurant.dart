import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RestaurantView extends StatelessWidget {
  final String imageInput, titleInput;
  const RestaurantView({Key? key, required this.imageInput, required this.titleInput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Color(0xff5A6CEA).withOpacity(.4),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 147.w,
        height: 184.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.r),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/${imageInput}.png",height: 73.h,width: 96.w,),
            SizedBox(height: 17.h,),
            Text(titleInput,style: TextStyle(fontSize: 14,fontFamily: "Ben",fontWeight: FontWeight.bold),),
            SizedBox(height: 4.h,),
            Text("12 Mins",style: TextStyle(fontSize: 13,fontFamily: "Ben",),)
          ],
        ),
      ),
    );
  }
}
