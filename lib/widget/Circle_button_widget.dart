import 'package:flutter/material.dart';

class CircleButtonWidget extends StatelessWidget {
final Widget child;

  const CircleButtonWidget({super.key, required this.child});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 5),
      child: Container(

        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle
        ),
        padding:const EdgeInsets.all(12),
        child: Center(child: child),
      ),
    );
  }
}
