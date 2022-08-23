import 'package:flutter/material.dart';
import 'package:sushi/widget/Circle_button_widget.dart';

import '../style_sushi/theme_app.dart';
import '../widget/build_search.dart';
import '../widget/column_for_row_fish_circle.dart';
import 'hom_top_sushi_view.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     // backgroundColor: AppTheme.bgColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
             Padding(
               padding: EdgeInsets.all(4.0),
               child: CircleButtonWidget(
                   child: Icon(Icons.menu,color: AppTheme.black,)),
             ),
              AppTheme.sizeBox10,
              Expanded(
                child: ListView(
                  children: [
                    Text('👋 Hi ,Ali',style: AppTheme.txtHeading.copyWith(

                    ),),
                    AppTheme.sizeBox10,
                    Padding(
                      padding: const EdgeInsets.only(left: 10,bottom: 10),
                      child: Text('what your is favorite sushi?',style: AppTheme.txtBtnCategory,),
                    ),
                    buildSearch(),
                    AppTheme.sizeBox10,
                    buildRowHeader('categories',(){}),
                    AppTheme.sizeBox10,
                    BuildRowIconFish(),
                    AppTheme.sizeBox10,
                    buildRowHeader('Top Sushi',(){}),
                    AppTheme.sizeBox10,
                    SizedBox(
                      height: 280,
                        child: HomeTopSushiView()),
                    AppTheme.sizeBox10
                  ],
                ),
              )




            ],
          ),
        ),
      ),
    );
  }





  Widget buildRowHeader(String title,VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(title,style: TextStyle(
                    color: Colors.orange,
                    fontSize: 24,
                    fontWeight: FontWeight.bold
                  ),),
                  InkWell(
                      onTap: onTap,
                      child: Text('See All',style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade600
                      ),)),
                ],
              ),
    );
  }
}


