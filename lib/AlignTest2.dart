import 'package:flutter/material.dart';
import 'package:learning_flutter/stock_card.dart';

class LayoutTest2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('my app'),
      ),
      body:
      Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

            StockCard(isIncome: true, stockValue: 1023),

            SizedBox(width: 20),

            StockCard(isIncome: false, stockValue: 3843,),

          ],
        ),
      ),
    );
  }
}
