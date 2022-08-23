import 'package:flutter/material.dart';
import 'package:sushi/widget/Circle_button_widget.dart';

import '../models/sushi_model.dart';
import '../style_sushi/theme_app.dart';
import '../widget/column_for_row_fish_circle.dart';

class OrderView extends StatefulWidget {
  final SushiModel selected;

  const OrderView({super.key, required this.selected});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
   Offset? _location;
   int? priceSelectedIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12, top: 12),
                  child: CircleButtonWidget(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 12, top: 12),
                  child: CircleButtonWidget(
                      child: Icon(
                    Icons.favorite,
                    color: Colors.red,
                  )),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 12,left: 12,top: 12),
                child: ListView(
                  children: [
                    SizedBox(height: 8,),
                    Text(
                      widget.selected.title,
                      style: TextStyle(
                          color: Colors.orange,
                        fontSize: 35,
                        fontWeight: FontWeight.w600

                      ),
                    ),
                    AppTheme.sizeBox10,
                    Text(widget.selected.desc ,style: TextStyle(
                        color: Colors.orange.shade200,
                        fontSize: 24,
                        fontWeight: FontWeight.w600

                    ),),
                    AppTheme.sizeBox10,
                    SizedBox(
                      width: MediaQuery.of(context).size.width/3,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ColumnForFishCircleRow(
                            title: "salmon",
                            icon: MyFlutterApp.salmon,

                          ),
                          ColumnForFishCircleRow(
                            title: "caviar",
                            icon: MyFlutterApp.caviar,
                          ),
                          ColumnForFishCircleRow(
                            title: "rice",
                            icon: MyFlutterApp.rice,
                          ),
                        ],
                      ),
                    ),
                    AppTheme.sizeBox20,
                    Image.asset("assets/images/${widget.selected.image}",height: 200,),
                    AppTheme.sizeBox20,
                    AppTheme.sizeBox10,
                    Text("Chose the quality:",style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 24,
                        fontWeight: FontWeight.w600

                    ),),
                    AppTheme.sizeBox20,
                    Expanded(
                      child: Stack(
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                DrawUnit(
                                    child: Text(
                                      '6 unit',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                    ),
                                    ),
                                    selected: priceSelectedIndex==0,
                                    callBack: (offset) {
                                      setState(() {
                                        _location = offset;
                                        priceSelectedIndex=0;
                                      });
                                    }),
                                SizedBox(width: 24,),
                                DrawUnit(
                                    child: Text(
                                      '12 unit',style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20
                                    ),
                                    ),
                                    selected: priceSelectedIndex==1,
                                    callBack: (offset) {
                                      setState(() {
                                        _location = offset;
                                        priceSelectedIndex=1;
                                      });
                                    }),
                                SizedBox(width: 24,),
                                DrawUnit(
                                    child: Text(
                                      '24 unit',style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20
                                    ),
                                    ),
                                    selected: priceSelectedIndex==2,
                                    callBack: (offset) {
                                      setState(() {
                                        _location = offset;
                                        priceSelectedIndex=2;
                                      });
                                    }),
                              ],
                            ),
                          ),
                          if (_location != null) buildPrice(),
                          if (_location != null)
                            AnimatedPositioned(
                                left: _location?.dx,
                                top: _location?.dy,
                                child: Icon(
                                  MyFlutterApp.sort_up,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                duration: Duration(microseconds: 2500))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildPrice() {

    return Align(
      alignment: Alignment.bottomCenter,

      child: Padding(
        padding: EdgeInsets.only(top: 72,//15=iconSize/2
            left: 12,right: 12),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text.rich(TextSpan(
                        text: "\$ ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                            color: Colors.grey.shade300),
                        children: [
                          TextSpan(text: "6"),
                        ])),
                    Text('Total price',style: TextStyle(
                      color: Colors.orange.shade200,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Colors.pink.shade700,
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ))),
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Place Order",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.red.shade200
                                // color: flag?Colors.grey.shade300:Colors.grey.shade800
                                ),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Icon(
                            MyFlutterApp.purchase_order,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}

typedef TargetCallBack(Offset offset);

class DrawUnit extends StatelessWidget {
  final Widget child;
  final TargetCallBack callBack;
  final bool selected;

  const DrawUnit({super.key, required this.child, required this.callBack,  this.selected=false});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        final OverlayState? overlayState = Overlay.of(context);
        final RenderBox renderBox = context.findRenderObject() as RenderBox;
        final Offset target = renderBox.localToGlobal(
          renderBox.size.center(Offset.zero),
          ancestor: overlayState?.context.findRenderObject(),
        );
        callBack(Offset(target.dx, renderBox.size.height));
      },
      child: child,
      style: ButtonStyle(
        shape: MaterialStateProperty.all<OutlinedBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(selected?AppTheme.darkColor:AppTheme.grayColor),
        foregroundColor: MaterialStateProperty.all<Color>(Colors.orange.shade600),
      ),
    );
  }
}
