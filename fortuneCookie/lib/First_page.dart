import 'package:flutter/material.dart';


class First_page extends StatelessWidget {
  nextPage(BuildContext context) => Navigator.pushNamed(context, '/next');
  //다음 페이지로 넘어가는 함수 구현
  const First_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[700], //appbar를 뺀 나머지 배경색 적용
      appBar: AppBar(
        title: Text("Fortune Cookie"),
        backgroundColor: Colors.amber[800],
        centerTitle: true,
        elevation: 0.0, //appBar 문구,배경색, 가운데 정렬 입체감 0 적용

      ),

      body: Padding(
        padding: EdgeInsets.fromLTRB(15.0, 30.0, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //가로축 정렬- 시작점을 기준으로

          children: [

            Center( //이미지 가운데 정렬하기 위한 방법
              child: Image.network("https://media1.giphy.com/media/26FPG8BNlTOr3MLJe/200w.webp?"
                  "cid=ecf05e47kbwh9tci5pqaqp80gn27qqwagjeuv5qppbrdwnaf&rid=200w.webp&ct=g"),
              //gif이미지를 웹상 주소를 통해해 불러기
            ),

            SizedBox(
              height: 70.0,
            ),
            Text("User_Name",
                style: TextStyle( //text의 디자인적 요소 추가할대 사용
                  color: Colors.white, //text 색상 지정
                  letterSpacing: 2.0, //철자간의 간격 조정
                )),

            SizedBox(
              height: 10.0,
            ), //height width 기준으로 간격 조정

            Text("Park Yong Gwan",
              style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 25.0, //글자 크기 조정
                  fontWeight: FontWeight.bold // 글자 굵기 조절 - 굵게
              ) ,),

            SizedBox(
              height: 30.0,
            ),
            Row(
              children: [
                Icon(Icons.wb_incandescent), //아이콘 입력
                SizedBox(
                  width: 5.0,
                ),  //아이콘과 문자 사이에 간격 조정

                Text("Would you like to know your fortune?",
                  style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),
                )

              ],

            ),

            Row(
              children: [
                Icon(Icons.wb_incandescent),
                SizedBox(
                  width: 5.0,
                ),

                Text("then go to the next page right now",
                  style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),
                )

              ],

            ),

            Row(
              children: [
                Icon(Icons.wb_incandescent),
                SizedBox(
                  width: 5.0,
                ),

                Text("You'll find out about your fortune today there.",
                  style: TextStyle(
                    fontSize: 15.0,
                    letterSpacing: 1.0,
                  ),
                )

              ],

            ),

          ],),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => nextPage(context),
        child: Icon(Icons.add),
        backgroundColor: Colors.amber[700],
      ),
      //페이지 넘기는 버튼 만들기
    );
  }
}


