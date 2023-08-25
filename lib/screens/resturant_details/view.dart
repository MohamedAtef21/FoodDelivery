import 'package:flutter/material.dart';

class ResturantDetailsView extends StatelessWidget {
  const ResturantDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      showModalBottomSheet(
        isDismissible: false,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
        ),
        context: context,
        builder: (BuildContext context){
          return Column(
            children: [
              Container(
                width: 100,
                height: 100,
                color: Colors.red,
              )
            ],
          );
        },
      );
    });
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/restaurant_photo.png"),
        ],
      ),
    );
  }
}
