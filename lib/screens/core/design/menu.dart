import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuView extends StatelessWidget {
  final String imageInput,foodName,resturantName;
  final num price;
  const MenuView({Key? key, required this.imageInput, required this.foodName, required this.resturantName, required this.price}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      shadowColor: Color(0xff5A6CEA).withOpacity(.4),
      borderRadius: BorderRadius.circular(15),
      child: Container(
        height: 87.h,
        width: 323.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/${imageInput}.png",height: 64.h,width: 64.w,),
            Column(
              children: [
                SizedBox(height: 25.h,),
                Text(foodName,style: TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.bold),),
                SizedBox(height: 4.h,),
                Text(resturantName,style: TextStyle(fontSize: 14,fontFamily: "Ben",),),
              ],
            ),
            Text("\$${price}",style: TextStyle(fontSize: 22,fontFamily: "Ben",fontWeight: FontWeight.bold,color: Color(0xffFEAD1D)),),
          ],
        ),
      ),
    );
  }
}
