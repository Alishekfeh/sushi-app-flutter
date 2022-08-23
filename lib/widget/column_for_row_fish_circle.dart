import 'package:flutter/material.dart';

import '../style_sushi/theme_app.dart';
import 'Circle_button_widget.dart';

class ColumnForFishCircleRow extends StatelessWidget {
final String title;
final IconData icon;

  const ColumnForFishCircleRow({super.key, required this.title, required this.icon});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleButtonWidget(child: Icon(icon,color: Colors.grey.shade800,size: 32,)),
        AppTheme.sizeBox10,
        Text(title,style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.orange.shade200
        ),)
      ],
    );
  }
}
class BuildRowIconFish extends StatelessWidget {
  const BuildRowIconFish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ColumnForFishCircleRow(icon:MyFlutterApp.salmon,title: 'salmon'),
          ColumnForFishCircleRow(icon:MyFlutterApp.caviar,title: 'caviar'),
          ColumnForFishCircleRow(icon:MyFlutterApp.prawn,title: 'prawn'),
          ColumnForFishCircleRow(icon:MyFlutterApp.rice,title: 'rice'),
          ColumnForFishCircleRow(icon:MyFlutterApp.tentacles,title: 'tentacles'),
        ],
      ),
    );
  }
}
