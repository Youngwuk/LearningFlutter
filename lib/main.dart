import 'package:flutter/material.dart';
import 'package:learning_flutter/photo_demo.dart';
import 'package:learning_flutter/second_test.dart';
import 'package:learning_flutter/statefull_demo.dart';

import 'AlignTest.dart';
import 'AlignTest2.dart';


void main() => runApp(new MyApp());
//void main() => callFromMain();

void callFromMain() {
  print('test');
}

class Demo {
  final String title;
  final String routeName;
  final WidgetBuilder buildRoute;

  Demo(this.title, this.routeName, this.buildRoute);
}

Demo layoutDemo = Demo('Layout Test', '/Layout Test', (context) => LayoutTest());
Demo layoutDemo2 = Demo('Layout Test2', '/Layout Test2', (context) => LayoutTest2());
Demo photoDemo = Demo('Photo load', '/photo', (context) => PhotoDemo());
Demo statefullDemo = Demo('StateFull test', '/statefull test', (context) => StateFullDemo());


final List<Demo> demos = List<Demo>()
  ..add(layoutDemo)
  ..add(layoutDemo2)
  ..add(photoDemo)
  ..add(statefullDemo)
;

Map<String, WidgetBuilder> _buildRouterBuilder() {
  return Map<String, WidgetBuilder>.fromIterable(
    demos,
    key: (demo) => demo.routeName,
    value: (demo) => demo.buildRoute,
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      theme: new ThemeData(
        // Add the 3 lines from here...
        primaryColor: Colors.blue,
      ),
      initialRoute: '/',
      routes: _buildRouterBuilder(),
//      routes: {'/first': (context) => FirstDemo()},
      home: Home(),
    );
//        home: Scaffold(body: ListView(children: widgets)));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = demos.map((demo) {
      return ListTile(
        title: Text(demo.title, style: TextStyle(color: Colors.black),),
        onTap: () {
          print('goto ${demo.routeName}');
//          Navigator.pushNamed(context, demo.routeName);
          Navigator.pushNamed(context, demo.routeName);
        },
      );
    }).toList();

    return Scaffold(
      body: ListView(children: widgets),
    );
  }
}

