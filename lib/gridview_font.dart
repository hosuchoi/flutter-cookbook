//update the ui based on orientation
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Orientation Demo';

    return MaterialApp(
      title: appTitle,
      theme: ThemeData(fontFamily: 'Georgia'), //해당 앱의 기본 폰트설정
      home: OrientationList(
        title: appTitle,
      ),
    );
  }
}

class OrientationList extends StatelessWidget {
  final String title;

  OrientationList({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return GridView.count(
            // Create a grid with 2 columns in portrait mode, or 3 columns in
            // landscape mode.
            crossAxisCount: orientation == Orientation.portrait ? 3 : 5,
            // Generate 100 widgets that display their index in the List.
            children: List.generate(100, (index) {
              return Center(
                child: Text('Item $index',
                    // style: Theme.of(context).textTheme.bodyText1,
                    style: TextStyle(
                      fontSize: 50,
                      fontFamily: 'NanumPenScript', //특정영역만 폰트 설정
                    )),
              );
            }),
          );
        },
      ),
    );
  }
}
