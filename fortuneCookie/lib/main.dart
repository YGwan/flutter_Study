import 'package:flutter/material.dart';
import './First_page.dart';
import './Second_page.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Fortune_Cookie",
      debugShowCheckedModeBanner: false,//상단 오른쪽의 debug모양띠 제거
      initialRoute: '/',
      routes: {
        '/': (context) => First_page(),
        '/next': (context) => Second_page(title: "Fortune_Cookie",),
        // 페이지 이동을 위한 준비작업, initialRoute로 초기값 지정 후 routes값 지정으로 원하는
        // 페이지로 이동할 수 있는 작업을 진행하는 과정이다
        //변경점 저장

      },
    );
  }
}