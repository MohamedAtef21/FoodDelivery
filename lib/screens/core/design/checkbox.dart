import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheckBoxView extends StatefulWidget {
  const CheckBoxView({Key? key}) : super(key: key);

  @override
  State<CheckBoxView> createState() => _CheckBoxViewState();
}

class _CheckBoxViewState extends State<CheckBoxView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 22.w,
      height: 22.h,
      decoration: BoxDecoration(
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
    );
  }
}
