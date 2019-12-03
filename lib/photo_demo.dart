import 'package:flutter/material.dart';

class PhotoDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 48.0, 24.0, 0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.0),
                border: Border.all(color: Colors.red, width: 1,)
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24.0),
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: <Widget>[
                    Image.asset('assets/image/iu.jpg'),
                    Container(
                      width: double.infinity,
                      height: 40,
                      color: Colors.black54,
                      child: Center(
                          child: Text(
                        'I.U',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
            child: Text(
              '세계최고 여가수 아이유 by.토니',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
