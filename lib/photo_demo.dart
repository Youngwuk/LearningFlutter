import 'package:flutter/material.dart';

class PhotoDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.network(
        'https://picsum.photos/250?image=9',
      ),
    );

  }
}
