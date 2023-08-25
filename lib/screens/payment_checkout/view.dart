import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import 'package:foodninja/screens/location_edit/view.dart';
import 'package:foodninja/screens/payment_edit/view.dart';

import '../bottom_navigate/view.dart';
import '../core/design/confirm_order.dart';
import '../core/design/container_back.dart';
import '../core/design/price_info.dart';
import '../order_details/view.dart';

class PaymentCheckOutView extends StatelessWidget {
  const PaymentCheckOutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: OrderDetailsView()),
              SizedBox(height: 20.h,),
              Padding(padding: EdgeInsetsDirectional.only(start: 25, end: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Confirm Order",
                    style: TextStyle(
                        fontSize: 25,
                        fontFamily: "Ben",
                        color: Color(0xff09051C),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20.h,),
                  ConfirmOrderView(title: "Deliver To",iconInput: "location",detailsInput: "4517 Washington Ave. Manchester,\nKentucky 39495",onClick:(){
                    navigateTo(context, LocationEditView());
                  },),
                  SizedBox(height: 20.h,),
                  ConfirmOrderView(title: "Payment Method",iconInput: "paypal",detailsInput: "2121 6352 8465 ****",onClick:(){
                    navigateTo(context, PaymentEditView());
                  },),
                  SizedBox(height: 205.h,),
                  PriceInfoView(onClick: (){
                    navigateTo(context, PagesNavView());
                  }),
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
