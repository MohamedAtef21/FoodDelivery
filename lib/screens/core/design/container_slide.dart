import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class OrderSlideView extends StatelessWidget {
  final String imageinput;
  const OrderSlideView({Key? key, required this.imageinput}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(onPressed: (context) {
            },
              borderRadius: BorderRadius.only(topRight: Radius.circular(15),bottomRight: Radius.circular(15)),
            backgroundColor: Color(0xffFEAD1D),
              icon: Icons.delete,
            ),
          ],
        ),
        child: Material(
          elevation: 5,
          shadowColor: Color(0xff5A6CEA).withOpacity(.4),
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: 347.w,
            height: 103.h,
            decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 11, top: 21),
              child: Row(
                children: [
                  Image.asset("assets/images/${imageinput}.png",width: 62.w,height: 62.h,),
                  SizedBox(width: 20.w,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Spacy fresh crab",style: TextStyle(fontSize: 15,fontFamily: "Ben",fontWeight: FontWeight.bold),),
                      SizedBox(height: 6.h,),
                      Text("Waroenk kita",style: TextStyle(fontSize: 14,fontFamily: "Ben",color: Color(0xff3B3B3B)),),
                      SizedBox(height: 10.h,),
                      Text("\$ 35",style: TextStyle(fontSize: 19,fontFamily: "Ben",color: Color(0xff15BE77),fontWeight: FontWeight.w900),),
                    ],
                  ),
                  SizedBox(width: 40.w,),
                  Image.asset("assets/images/minus.png",width: 26.w,height: 26.h,),
                  SizedBox(width: 12.w,),
                  Text("1"),
                  SizedBox(width: 12.w,),
                  Image.asset("assets/images/plus.png",width: 26.w,height: 26.h,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
