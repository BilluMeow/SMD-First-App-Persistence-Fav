import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: _createLayout(),
      ),
    );
  }

  Widget _createLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createImage(),
        _createTitleRow(),
        _createButtonRow(),
        _createTextBlob(),
      ],
    );
  }

  Widget _createImage() {
    return Image.network(
      'https://bit.ly/3Le0sJl',
      width: 600,
      height: 240,
      fit: BoxFit.cover,
    );
  }

  Widget _createTitleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const Text("Lake Campground"),
            const Text("China, Pakistan"),
          ],
        ),
        Icon(Icons.star),
        Text("41")
      ],
    );
  }

  Widget _createButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _createButton("Call", Icons.call),
        _createButton("Share", Icons.share),
        _createButton("Route", Icons.near_me)
      ],
    );
  }

  Widget _createButton(var name, var icon) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.blue,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }

  Widget _createTextBlob() {
    return Padding(
      padding: EdgeInsets.all(32),
      child: Text(
        'To implement a custom painter, either subclass or'
        'implement this interface to define your custom paint delegate.'
        'CustomPainter subclasses must implement the paint and shouldRepaint'
        'methods, and may optionally also implement the hitTest and shouldRebuildSemantics'
        'methods, and the semanticsBuilder getter.',
        softWrap: true,
      ),
    );
  }
}
