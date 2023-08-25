import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';

import '../../map/view.dart';

class ShippingLocationView extends StatelessWidget {
  const ShippingLocationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 5,
          shadowColor: Color(0xff5A6CEA).withOpacity(.4),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 335.w,
            height: 107.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 12, top: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order Location",style: TextStyle(fontSize: 14,fontFamily: "Ben",),),
                  SizedBox(height: 16.h,),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/location.svg"),
                      SizedBox(width: 14.w,),
                      Text("8502 Preston Rd. Inglewood,\nMaine 98380",style: TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.bold),),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: 20.h,),
        Material(
          elevation: 5,
          shadowColor: Color(0xff5A6CEA).withOpacity(.4),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 335.w,
            height: 141.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 12, top: 17),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Deliver To",style: TextStyle(fontSize: 14,fontFamily: "Ben",),),
                  SizedBox(height: 16.h,),
                  Row(
                    children: [
                      SvgPicture.asset("assets/icons/location.svg"),
                      SizedBox(width: 14.w,),
                      Text("4517 Washington Ave. Manchester,\nKentucky 39495",style: TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.bold),),
                    ],
                  ),
                  SizedBox(height: 20.h,),
                  GestureDetector(
                  onTap: (){
                    navigateTo(context, MapSample());
                  },
                  child: Text("set location",style: TextStyle(fontSize: 14,fontFamily: "Ben",color: Color(0xff15BE77)),))
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
