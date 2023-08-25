import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchInputView extends StatelessWidget {
  const SearchInputView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 250.w,
          height: 50.h,
          child: TextFormField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xffF9A84D).withOpacity(.1),
              labelText: "What do you want to order?",
              labelStyle: TextStyle(fontSize: 12,color: Color(0xffDA6317).withOpacity(0.4)),
              prefixIcon: SvgPicture.asset("assets/icons/search.svg",fit: BoxFit.scaleDown),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(15.r)),
              ),
            ),
          ),
        ),
        SizedBox(width: 9.h,),
        SvgPicture.asset("assets/icons/filter.svg"),
      ],
    );
  }
}
