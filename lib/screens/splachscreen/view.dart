import 'dart:async';

import 'package:flutter/material.dart';
import 'package:foodninja/screens/core/logic/helper_method.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../on_boarding/view.dart';

class SplachScreenView extends StatefulWidget {
  const SplachScreenView({Key? key}) : super(key: key);

  @override
  State<SplachScreenView> createState() => _SplachScreenViewState();
}

class _SplachScreenViewState extends State<SplachScreenView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3),(){navigateTo(context, const OnBoardingView(),false);});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/background.png",height: double.infinity,fit: BoxFit.fill,),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/main_logo.png"),
                GradientText("FoodNinja", colors:const [
                  Color(0xff53E88B),
                  Color(0xff15BE77),
                ],
                  style: const TextStyle(fontSize: 40,fontFamily: "Viga",),
                ),
                const Text("Deliever Favorite Food",style: TextStyle(fontSize: 13,color: Color(0xff09051C),fontWeight: FontWeight.bold,fontFamily: "Inter"),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
