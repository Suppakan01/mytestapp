import 'package:flutter/material.dart';
//import 'package:mytestapp/aqi_service/aqi_page.dart';
import 'package:mytestapp/product/page.dart';

//import 'user_model.dart';
/*import 'form/registration_form.dart';
import 'package:mytestapp/page_answer/answer1.dart';
import 'package:mytestapp/page_answer/answer2.dart';>
import 'package:mytestapp/page_answer/answer3.dart';
import 'package:mytestapp/page_answer/answer4.dart';
import 'package:mytestapp/page_answer/answer_portal.dart';
import 'package:mytestapp/page_navigator/first_page.dart';
import 'package:mytestapp/my_stateful_widget.dart';*/
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const ProductPage(),
    );
  }
}
