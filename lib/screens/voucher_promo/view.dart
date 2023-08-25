import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/design/app_input.dart';

import '../bottom_navigate/view.dart';
import '../core/design/container_back.dart';
import '../core/logic/helper_method.dart';

class VoucherPromoView extends StatelessWidget {
  const VoucherPromoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: PagesNavView()),
              SizedBox(height: 20.h),
              Padding(padding: EdgeInsetsDirectional.only(start: 25, end: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Voucher Promo",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Ben",
                        color: Color(0xff09051C),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.h,),
                  Stack(
                    children: [
                      Container(
                        height: 122.h,
                        width: 325.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            begin: AlignmentDirectional.centerStart,
                            end: AlignmentDirectional.centerEnd,
                            colors: [
                              Color(0xff53E88B),
                              Color(0xff15BE77),
                            ],
                          ),
                        ),
                        child: Image.asset("assets/images/deal.png",alignment: AlignmentDirectional.topStart,),
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 173, top: 30),
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
                            child: Text("Order Now",
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
                  ),
                  SizedBox(height: 20.h,),
                  Stack(
                    children: [
                      Container(
                        height: 122.h,
                        width: 325.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffFFAD1D).withOpacity(.4),
                        ),
                        child: Image.asset("assets/images/deal2.png",alignment: AlignmentDirectional.topStart,),
                      ),
                      Padding(padding: EdgeInsetsDirectional.only(start: 173, top: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Special Deal For\nOctober",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Color(0xff6B3A5B),
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 10,),
                            ElevatedButton(
                              onPressed: () {
                                navigateTo(context, VoucherPromoView());
                              },
                              child: Text("Order Now",
                                  style: TextStyle(
                                      fontSize: 10, color: Color(0xff6B3A5B))),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(6)),
                                backgroundColor: Color(0xffFFFFFF),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 304.h,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      AppInputView(text: "Check out"),
                    ],
                  )
                ],
              ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
