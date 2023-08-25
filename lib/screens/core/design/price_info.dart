import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import 'package:foodninja/screens/payment_checkout/view.dart';


class PriceInfoView extends StatelessWidget {
  var onClick;
   PriceInfoView({Key? key,required this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          elevation: 5,
          shadowColor: Color(0xff5A6CEA).withOpacity(.4),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 346.w,
            height: 206.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
          gradient: const LinearGradient(
            begin: AlignmentDirectional.centerStart,
            end: AlignmentDirectional.centerEnd,
            colors: [
              Color(0xff53E88B),
              Color(0xff15BE77),
            ],
          ),
      ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 29, top: 20,end: 23),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Sub-Total",style: TextStyle(fontSize: 14,fontFamily: "Ben",fontWeight: FontWeight.w800,color: Color(0xffFEFEFF)),),
                      Text("120 \$",style: TextStyle(fontSize: 14,fontFamily: "Ben",fontWeight: FontWeight.w500,color: Color(0xffFEFEFF)),)
                    ],
                  ),
                  SizedBox(height: 7.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Delivery Charge",style: TextStyle(fontSize: 14,fontFamily: "Ben",fontWeight: FontWeight.w800,color: Color(0xffFEFEFF)),),
                      Text("10 \$",style: TextStyle(fontSize: 14,fontFamily: "Ben",fontWeight: FontWeight.w500,color: Color(0xffFEFEFF)),)
                    ],
                  ),
                  SizedBox(height: 7.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Discount",style: TextStyle(fontSize: 14,fontFamily: "Ben",fontWeight: FontWeight.w800,color: Color(0xffFEFEFF)),),
                      Text("20 \$",style: TextStyle(fontSize: 14,fontFamily: "Ben",fontWeight: FontWeight.w500,color: Color(0xffFEFEFF)),)
                    ],
                  ),
                  SizedBox(height: 21.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total",style: TextStyle(fontSize: 18,fontFamily: "Ben",fontWeight: FontWeight.bold,color: Color(0xffFEFEFF)),),
                      Text("150 \$",style: TextStyle(fontSize: 18,fontFamily: "Ben",fontWeight: FontWeight.bold,color: Color(0xffFEFEFF)),)
                    ],
                  ),
                  SizedBox(height: 22.h,),
                ],
              ),
            ),
          ),
        ),
        SvgPicture.asset("assets/icons/background4.svg",clipBehavior: Clip.antiAlias),
        Padding(
          padding:EdgeInsetsDirectional.only(start: 12, top: 137,end: 12,bottom: 12) ,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ElevatedButton(
                onPressed: () {
                  onClick();
                },
                child: Text("Place My Order",
                    style: TextStyle(
                        fontSize: 10, color: Color(0xff53E88B))),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(6)),
                  backgroundColor: Color(0xffFFFFFF),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
