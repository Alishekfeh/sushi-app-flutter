import 'package:flutter/material.dart';
import 'package:sushi/views/HomePage.dart';
//textButton
//كيفية عمل ال
//flag %2==0التحكم في الألوان عن طريق ال mode
// TextButton(
// style: ButtonStyle(
// backgroundColor: MaterialStateProperty.all<Color>(
// !flag?
// AppTheme.darkColor:AppTheme.white.withAlpha(100),
// ),
// shape: MaterialStateProperty.all<OutlinedBorder>(
// RoundedRectangleBorder(
// borderRadius: BorderRadius.circular(50),
// )
// )
// ),
// onPressed: () {}, child: Text("Order"))
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark
      ),
      home: const HomePage(),
    );
  }
}


