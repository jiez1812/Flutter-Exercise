import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = true; //Remove to suppress visual layout
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        //Change to buildColumn() fot the other column example
        body: Column(children: [
          Expanded(child: Center(child: buildRow())),
          Center(child: starRow()),
        ]),
      ),
    );
  }
}

Widget buildRow() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: Image.asset('images/pic1.jpg')),
        Expanded(flex: 2, child: Image.asset('images/pic2.jpg')),
        Expanded(child: Image.asset('images/pic3.jpg')),
      ],
    );

Widget buildColumn() => Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(child: Image.asset('images/pic1.jpg')),
        Expanded(flex: 2, child: Image.asset('images/pic2.jpg')),
        Expanded(child: Image.asset('images/pic3.jpg')),
      ],
    );

Widget starRow() => Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.star, color: Colors.yellow[500]),
        Icon(Icons.star, color: Colors.yellow[500]),
        Icon(Icons.star, color: Colors.yellow[500]),
        const Icon(Icons.star, color: Colors.black),
        const Icon(Icons.star, color: Colors.black),
      ],
    );
