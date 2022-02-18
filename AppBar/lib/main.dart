import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appbar',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppBar'),
        centerTitle: true,
        elevation: 0.0,
        actions: [
          //이곳에 한개 이상의 위젯을 가짐
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('shopping cart is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('search is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                //현재 사용자 이미지를 원형 형태로 가져옴
                backgroundImage: AssetImage('assets/char_bear.jpeg'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('YongGwan'),
              accountEmail: Text('good0619@naver.com'),
              onDetailsPressed: () {
                //화살표를 만들고ㄴ 누르면 수행할 기능을 지정
                print('arrow is clicked');
              },
              decoration: BoxDecoration(
                  color: Colors.red[300],
                  borderRadius: BorderRadius.only(
                      //경계선만 원형 형태로, 곡선률 지정
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))), //꾸미기
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.grey[900],
              ),
              title: Text('home'),
              onTap: () {
                print('home button clicked');
              },
              trailing: Icon(Icons.ac_unit), //우측 끝나는 점에 위젯 배치
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[900],
              ),
              title: Text('setting'),
              onTap: () {
                print('setting button clicked');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[900],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A button clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}
