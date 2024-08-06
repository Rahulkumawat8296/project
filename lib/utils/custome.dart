import 'package:flutter/material.dart';
import '../res/color.dart';

class CustomeContainer extends StatelessWidget {
  final Function (dynamic) onTap;
  final double height;
  final double width;
  final Widget child;

  const CustomeContainer({super.key, required this.height, required this.width, required this.child, required this.onTap});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        onTap("Some value");
      },
      child: Container(

        height: height,
        width: width,
        decoration: BoxDecoration(
          color: AppColor.amber,
          borderRadius: BorderRadius.circular(10),

        ),
        child: child,
      ),
    );

  }

}
