import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentChooseView extends StatelessWidget {
  final String imageInput,title;
  const PaymentChooseView({Key? key, required this.imageInput, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Color(0xff5A6CEA).withOpacity(.4),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 335.w,
        height: 73.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/${imageInput}.png",height: 70.h,width: 70.w,),
            Text(title,style: TextStyle(fontSize: 14,fontFamily: "Ben",fontWeight: FontWeight.w600,color: Color(0xff3B3B3B)),)
          ],
        ),
      ),
    );
  }
}
