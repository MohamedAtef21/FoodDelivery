import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import 'package:foodninja/screens/voucher_promo/view.dart';

class SpecialContainerView extends StatelessWidget {
  const SpecialContainerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Material(
          elevation: 5,
          shadowColor: Color(0xff5A6CEA).withOpacity(.4),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 150.h,
            width: 325.w,
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: AlignmentDirectional.centerStart,
                end: AlignmentDirectional.centerEnd,
                colors: [
                  Color(0xff53E88B),
                  Color(0xff15BE77),
                ],
              ),
              borderRadius: BorderRadius.circular(15.r),
            ),
            child: Row(
              children: [
                Image.asset("assets/images/icecream.png"),
              ],
            ),
          ),
        ),
        SvgPicture.asset("assets/icons/background3.svg",
            clipBehavior: Clip.antiAlias),
        Padding(
          padding: EdgeInsetsDirectional.only(start: 173, top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Special Deal For\nOctober",
                style: TextStyle(
                    fontSize: 17,
                    color: Color(0xffFFFFFF),
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
                onPressed: () {
                  navigateTo(context, VoucherPromoView());
                },
                child: Text("Buy Now",
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
