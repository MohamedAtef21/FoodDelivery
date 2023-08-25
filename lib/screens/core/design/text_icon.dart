import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextInputIconView extends StatelessWidget {
  final String labelText,iconPath;
  final bool obscureText ;
  final TextInputType inputType;
  const TextInputIconView({Key? key, required this.labelText, required this.obscureText, required this.inputType, required this.iconPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Material(
        elevation: 5,
        shadowColor: Color(0xff5A6CEA).withOpacity(.2),
        borderRadius: BorderRadius.circular(15),
        child: TextFormField(
          keyboardType: inputType,
          obscureText: obscureText,
          decoration: InputDecoration(
            prefixIcon: SvgPicture.asset("assets/icons/$iconPath.svg",fit: BoxFit.scaleDown),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(15.r)),
              ),
              labelText: labelText,
              labelStyle:const TextStyle(fontSize: 14,fontFamily: "Ben",color: Color(0xff3B3B3B))
          ),
        ),
      ),
    );
  }
}
