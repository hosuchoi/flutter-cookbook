import 'package:flutter/material.dart';

void main() => runApp(TextFieldApp());

class TextFieldApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Text field';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyPage(),
      ),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            //decoration을 통해서 꾸미기 가능
            decoration: InputDecoration(
              labelText: '이름',
              icon: Icon(Icons.people),
              // errorText: '이름을 제대로 입력하세요'
              // border: InputBorder.none,
              // hintText: 'Enter a search term',
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
              //decoration을 통해서 꾸미기 가능
              // decoration: null,
              ),
        ),
        TextFormField(
          decoration: InputDecoration(
            labelText: 'Enter your name',
          ),
        ),
      ],
    );
  }
}
