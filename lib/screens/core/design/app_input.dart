import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppInputView extends StatelessWidget {
  final String text;
  const AppInputView({Key? key, required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Color(0xff5A6CEA).withOpacity(.4),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 57.h,
        width: 157.w,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: AlignmentDirectional.centerStart,
            end: AlignmentDirectional.centerEnd,
            colors: [
              Color(0xff53E88B),
              Color(0xff15BE77),
            ],
          ),
          borderRadius: BorderRadius.circular(15.r)
        ),
        child: Center(child: Text(text,style: const TextStyle(fontSize: 16,color: Color(0xffFFFFFF),fontWeight: FontWeight.bold),)),

      ),
    );
  }
}
