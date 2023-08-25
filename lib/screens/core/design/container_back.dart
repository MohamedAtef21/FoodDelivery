import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../logic/helper_method.dart';

class ContainerBackView extends StatelessWidget {
  final dynamic onPressDest;
  const ContainerBackView({Key? key, required this.onPressDest}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(start: 25,top: 45),
      child: Material(
        elevation: 5,
        shadowColor: Color(0xff5A6CEA).withOpacity(.4),
        borderRadius: BorderRadius.circular(15),
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: Color(0xffF9A84D).withOpacity(0.1),
              borderRadius: BorderRadius.circular(15.r)
          ),
          child:  IconButton(onPressed: (){
            navigateTo(context, onPressDest);
          },
            icon: SvgPicture.asset("assets/icons/backword.svg"),),
        ),
      ),
    );
  }
}
