import 'package:flutter/material.dart';


import '../page/home_page.dart';
import '../page/money_control_page.dart';
import '../page/tinder_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) =>const  HomePage(),
        '/tinder': (context) =>const  TinderPage(),
        '/moneyControl': (context) =>const  MoneyControlPage(),  
      },
      initialRoute: '/',
    );
  }
}