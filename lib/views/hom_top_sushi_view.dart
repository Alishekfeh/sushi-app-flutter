import 'package:flutter/material.dart';
import 'package:sushi/models/sushi_model.dart';
import 'package:sushi/style_sushi/theme_app.dart';

import 'order_view.dart';

class HomeTopSushiView extends StatelessWidget {
  final List<SushiModel> list = SushiModel.list;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context, index) {
          bool flag = index % 2 == 0;
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => OrderView(selected: list[index])));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 6),
              child: Container(
                width: 170,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: flag ? AppTheme.darkColor : AppTheme.white,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/${list[index].image}",
                          fit: BoxFit.cover,
                          height: 110,
                        ),
                        Expanded(child: SizedBox.shrink()),
                        Text(
                          list[index].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: flag
                                  ? Colors.grey.shade300
                                  : Colors.grey.shade800),
                        ),
                        AppTheme.sizeBox5,
                        Text(
                          list[index].desc,
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: flag
                                  ? Colors.grey.shade200
                                  : Colors.grey.shade700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text.rich(TextSpan(
                                text: "\$ ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: flag
                                        ? Colors.grey.shade300
                                        : Colors.grey.shade800),
                                children: [
                                  TextSpan(text: list[index].price),
                                ])),
                            TextButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                      !flag
                                          ? AppTheme.darkColor
                                          : AppTheme.white.withAlpha(100),
                                    ),
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ))),
                                onPressed: () {},
                                child: Text(
                                  "Order",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 21,
                                    // color: flag?Colors.grey.shade300:Colors.grey.shade800
                                  ),
                                ))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
