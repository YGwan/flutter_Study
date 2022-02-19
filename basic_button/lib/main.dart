import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ButtonApp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyButton(),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buttons'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('text Button Clicked'),
                    duration: Duration(seconds: 2)));
              },
              onLongPress: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('text Button long Clicked'),
                    duration: Duration(seconds: 2)));
              },
              child: Text(
                'text button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: TextButton.styleFrom(
                primary: Colors.red,
                //backgroundColor: Colors.blue,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Elevated Button Clicked'),
                    duration: Duration(seconds: 2)));
              },
              child: Text(
                'Elevated button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: ElevatedButton.styleFrom(
                  primary:
                      Colors.orangeAccent, //Elevated 속성은 primary가 배경색을 담당한다
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10.0) // Elevated 테두리 모양 결정

                      ),
                  elevation: 0.0),
            ),
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Outlined Button Clicked'),
                    duration: Duration(seconds: 2)));
              },
              child: Text(
                'Outlined Button',
                style: TextStyle(fontSize: 20.0),
              ),
              style: OutlinedButton.styleFrom(
                  primary: Colors.orange,
                  side: BorderSide(
                    //외곽선 style 조정
                    color: Colors.black87,
                    width: 2.0,
                  ),
                  minimumSize: Size(400.0, 50.0)), // button 크기 조정
            ),
            TextButton.icon(
              onPressed: null,
              icon: Icon(Icons.home, size: 30.0),
              label: Text('Go to home'),
              style: TextButton.styleFrom(
                  onSurface: Colors.blueAccent), //비활성화시킨 버튼 색상 조절
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              buttonPadding: EdgeInsets.all(20.0),
              children: [
                TextButton(onPressed: () {}, child: Text('yes')),
                ElevatedButton(onPressed: () {}, child: Text('NO'))
              ],
            ) //버튼들을 가로 방향으로 끝정렬 시킬때 사용
          ],
        ),
      ),
    );
  }
}
