import 'package:flutter/material.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition Demo',
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Screen'),
      ),
      body: GestureDetector(
        child: MyHero(),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (_) {
            return DetailScreen();
          }));
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: MyHero(),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}

//애니메이션 효과
class MyHero extends StatelessWidget {
  const MyHero({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'imageHero',
      child: Image.network(
        'https://picsum.photos/250?image=9',
      ),
      // child: GridView.count(
      //   // Create a grid with 2 columns. If you change the scrollDirection to
      //   // horizontal, this produces 2 rows.
      //   crossAxisCount: 3,
      //   // Generate 100 widgets that display their index in the List.
      //   children: List.generate(3, (index) {
      //     return Center(
      //       child: Text(
      //         'Item $index',
      //         style: Theme.of(context).textTheme.headline5,
      //       ),
      //     );
      //   }),
      // ),
    );
  }
}
