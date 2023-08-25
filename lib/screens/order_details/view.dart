import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';

import '../bottom_navigate/view.dart';
import '../core/design/container_back.dart';
import '../core/design/container_slide.dart';
import '../core/design/price_info.dart';
import '../payment_checkout/view.dart';

class OrderDetailsView extends StatelessWidget {
  const OrderDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ContainerBackView(onPressDest: PagesNavView()),
                SizedBox(height: 20.h,),
                Padding(padding: EdgeInsetsDirectional.only(start: 25, end: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Order details",
                        style: TextStyle(
                            fontSize: 25,
                            fontFamily: "Ben",
                            color: Color(0xff09051C),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 20.h,),
                      SizedBox(height: 103.h,child: OrderSlideView(imageinput: "order1",)),
                      SizedBox(height: 20.h,),
                      SizedBox(height: 103.h,child: OrderSlideView(imageinput: "order2",)),
                      SizedBox(height: 20.h,),
                      SizedBox(height: 103.h,child: OrderSlideView(imageinput: "order3",)),
                      SizedBox(height: 84.h,),
                      PriceInfoView(onClick: (){
                        navigateTo(context, PaymentCheckOutView());
                      },),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
