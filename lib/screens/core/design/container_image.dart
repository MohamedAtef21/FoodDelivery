import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerImageView extends StatelessWidget {
  final String imageInput;
  final double contHeight;
  const ContainerImageView({Key? key, required this.imageInput, required this.contHeight}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Color(0xff5A6CEA).withOpacity(.4),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        width: double.infinity,
        height: contHeight,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22.r),
        ),
        child:Image.asset("assets/images/${imageInput}.png"),
      ),
    );
  }
}
