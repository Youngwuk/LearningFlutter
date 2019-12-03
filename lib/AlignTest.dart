import 'package:flutter/material.dart';

class LayoutTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my app'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.star, size: 50,),
          Icon(Icons.star, size: 150,),
          Icon(Icons.star, size: 50,),
        ],
      ),
    );
  }
}
