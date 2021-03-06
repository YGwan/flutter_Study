import 'package:basic_refactoring/my_button/my_button.dart';
import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Sign In',
        ),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: _buildButton(),
    );
  }
}

Widget _buildButton() {
  return Padding(
    padding: EdgeInsets.all(15.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyButton(
            image: Image.asset('images/glogo.png'),
            text: Text(
              'Login with Google',
              style: TextStyle(color: Colors.black, fontSize: 15.0),
            ),
            color: Colors.white,
            radius: 4.0,
            onPressed: () {}),
        SizedBox(
          height: 10.0,
        ),
        MyButton(
            image: Image.asset('images/flogo.png'),
            text: Text(
              'Login with FaceBook',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            color: Color(0xFF334D92),
            radius: 4.0,
            onPressed: () {}),
        SizedBox(
          height: 10.0,
        ),
        MyButton(
            image: Icon(Icons.mail, color: Colors.white),
            text: Text(
              'Login with Email',
              style: TextStyle(color: Colors.white, fontSize: 15.0),
            ),
            color: Colors.green,
            radius: 4.0,
            onPressed: () {}),
      ],
    ),
  );
}
