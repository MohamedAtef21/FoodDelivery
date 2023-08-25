import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxView extends StatelessWidget {
  const CheckBoxView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Color(0xff5A6CEA).withOpacity(.4),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: 22.w,
        height: 22.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          shape: BoxShape.circle,
          gradient: const LinearGradient(
            begin: AlignmentDirectional.centerStart,
            end: AlignmentDirectional.centerEnd,
            colors: [
              Color(0xff53E88B),
              Color(0xff15BE77),
            ],
          ),
        ),
        child: Icon(
          Icons.check,
          size: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
