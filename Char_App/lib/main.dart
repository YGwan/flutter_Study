import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //debugbanner 제거
      title: 'Charactor',
      home: MyCard(),
    );
  }
}

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[400],
        appBar: AppBar(
          title: Text('Pokemon'),
          centerTitle: true, //제목을 정가운대로 정렬
          backgroundColor: Colors.red[600], //배경 색상 지정
          elevation: 0.0, //Appbar의 입체감을 없애준다.
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
          child:
          //캐릭터 기본 정보 제공 부분
          Column(crossAxisAlignment: CrossAxisAlignment.start, //왼쪽 시작점 정렬
              children: [
                Center(
                  child: CircleAvatar(
                    backgroundImage:
                    AssetImage('assets/pokemon.png'), //이미지를 원형 형태로 불러옴
                    radius: 60.0, //이미지 크기 조절
                    backgroundColor: Colors.red[400], // 이미지 배경 색 설정
                  ),
                ),

                Divider(
                  //구분선을 만듬
                  height: 60.0, // 구분선을 기준으로 위에 30, 밑에 30 만큼 떨어지게 위치 설정
                  color: Colors.grey[700], //구분선 색상 설정
                  thickness: 0.5, // 구분선 두께 설정
                  endIndent: 30.0, //구분선이 끝에서 얼마만큼 떨어져있는지를 지정
                ),
                Text(
                  'NAME',
                  style: TextStyle(
                    //text 스타일 지정
                      color: Colors.white, //글자 색 지정
                      letterSpacing: 2.0 //철자 간 간격 조정
                  ),
                ),
                SizedBox(
                  height: 10.0, // 박스를 넣어서 간격을 조절
                ),
                Text(
                  'Charizard',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28.0, //글자 크기 조정
                      fontWeight: FontWeight.bold //글자 굵기 조절 - bold형태
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Text(
                  'Power Level',
                  style: TextStyle(
                      color: Colors.white, //글자 색 지정
                      letterSpacing: 2.0 //철자 간 간격 조정
                  ),
                ),
                SizedBox(
                  height: 10.0, // 박스를 넣어서 간격을 조절
                ),
                Text(
                  '10',
                  style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28.0, //글자 크기 조정
                      fontWeight: FontWeight.bold //글자 굵기 조절 - bold형태
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),

                // 능력치(스킬) 관련 부분
                Row(
                  children: [
                    Icon(Icons.check_circle_outline), // 아이콘 불러오기
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Dragon peer',
                      style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline), // 아이콘 불러오기
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Scratching',
                      style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_circle_outline), // 아이콘 불러오기
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Flame spinning',
                      style: TextStyle(fontSize: 16.0, letterSpacing: 1.0),
                    ),
                  ],
                )
              ]),
        ));
  }
}
