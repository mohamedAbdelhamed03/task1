import 'package:flutter/material.dart';
import 'package:task1/pages/list_page.dart';
import 'package:task1/pages/login_page.dart';
import 'package:task1/pages/register_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes:
      {
        LoginPage.id : (context)=>LoginPage(),
        RegisterPage.id:(context)=>RegisterPage(),
        ListPage.id:(context)=>ListPage(),
      }
      ,
      initialRoute: LoginPage.id,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
    );
  }
}
