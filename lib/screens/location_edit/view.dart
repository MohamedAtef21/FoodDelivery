import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../core/design/container_back.dart';
import '../core/design/shipping_location.dart';
import '../payment_checkout/view.dart';

class LocationEditView extends StatelessWidget {
  const LocationEditView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background2.png"),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ContainerBackView(onPressDest: PaymentCheckOutView()),
              SizedBox(height: 20.h,),
              Padding(
                padding: EdgeInsetsDirectional.only(start: 25, end: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shipping",
                      style: TextStyle(
                          fontSize: 25,
                          fontFamily: "Ben",
                          color: Color(0xff09051C),
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20.h,),
                    ShippingLocationView()
                  ],
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}
