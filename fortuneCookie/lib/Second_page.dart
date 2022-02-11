import 'package:flutter/material.dart';


List<int> getShuffle(){

  List<int> numbers = [];

  for( int i=0; i < 45; i++) {
    numbers.add(i + 1);
  }
  numbers.shuffle();
  numbers.length = 6;
  return numbers;
}



class Second_page extends StatefulWidget {
  backPage(BuildContext context) => Navigator.pop(context);
  //전페이지로 넘어가는 함수 구현, 이 코드에서는 쓰진 않지만 자주 쓰이는 표현이다.

  Second_page({Key? key, required this.title}) : super(key: key);

  final String title;
  List<int> numbers = getShuffle();

  @override
  _Second_pageState createState() => _Second_pageState();
}


class _Second_pageState extends State<Second_page> {

  String result = '쿠키를 눌러 오늘의 운세를 확인하세요';

  List<String> data = [

    '매우 좋음 - 뜻을 가지고 추진하면 소망은 달성됩니다',
    '매우좋음 - 기대하고 소망했던 일이 이루어질 것 같습니다.',
    '좋음 - 주위의 협조를 구하면 해결책이 있습니다',
    '좋음 - 오늘 좋은 일이 일어날 것만 같습니다',
    '보통- 무난한 하루가 될 것 같습니다.',
    '나쁨 - 재난 구설수 따르니 각별히 신경 쓰시길 바랍니다',
    '나쁨 - 실수로 일을 저질러 손해 볼 수도 있습니다.',
    '매우나쁨 - 불리하게 진행되는 때니 뒤로 물러서시길 바랍니다.',
    '매우나쁨 - 독감 등 질병을 각별히 조심하시길 바랍니다.',
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.amber[700],
      appBar: AppBar(

        title: Text("표춘쿠키"),
        centerTitle: true,
        backgroundColor: Colors.amber[800],
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,

          children: <Widget>[
            GestureDetector(  //사용자가 제스처(누르기,쓰기)를 하는것을 탐지
              onTap: () {

                setState(() {
                  data.shuffle();
                  result = data[0];
                });

              },  //위의 이미지를 눌렀을경우 실행되는 함수

              child : CircleAvatar(  //이미지를 원형 형태로 만들어서 불러온다.
                backgroundImage: AssetImage('assets/fortune-cookie-emoji.png'),
                //이미지를 업로드하여 불러오는 방법
                //이미지파일(assets)를 만들고 이미지 업로드후, pubspec.yaml파일에서 이미지 경로 입력후 사용 가능

                radius: 200.0, //원형 크기 조절
                backgroundColor: Colors.amber[700],  //원형에서 이미지를 뺀 배경 부분의 색을 지정한다.

              ),


            ),

            Text(
              result,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ) ,
            ),
          ],
        ),
      ),
    );
  }
}