import 'package:flutter/material.dart';
import 'package:mytestapp/custom_widget/custom_card.dart';
//import 'package:mytestapp/aqi_service/aqi_page.dart';
//import 'package:mytestapp/product/page.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Custom Widget"),
          centerTitle: true,
        ),
        body: const Center(
          child: ProfileCard(
              name: "Suppakan Khaikhong",
              position: "Student",
              email: "khaikhong_s@silpakorn.edu",
              phoneNumber: "0653891757",
              imageUrl:
                  "https://blogger.googleusercontent.com/img/b/R29vZ2xl/AVvXsEgN5o7w5NlADzh_hekt-Cp2GeUgj2Gi_sHz1DFyZGfSuxtwJEJb9oFL8G5T6UTK2QLoLTaEBs0VCaAPesxkSfwQX25LIEzr31ebD0e6rxyHjMX_-MdXODt0H9x4_qIT6E7vb4UgOXCgV6A/s1600/62aff1c3-9d11-47a7-bfa1-ebde5fa578fb.jpg"),
        ),
      ),
    );
  }
}
