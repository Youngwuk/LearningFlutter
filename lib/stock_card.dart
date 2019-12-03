import 'package:flutter/material.dart';

class StockCard extends StatelessWidget {
  bool isIncome;
  int stockValue;

  StockCard({this.isIncome, this.stockValue});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        buildArrow(),
        SizedBox(width: 15),
        buildRightLayer()
      ],
    );
  }

  Container buildArrow() {
    return Container(
        decoration: BoxDecoration(
            color: isIncome? Color.fromARGB(255, 220, 220, 255) : Color.fromARGB(255, 235, 220, 255),
            borderRadius: BorderRadius.circular(8.0)),
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              isIncome ? Icons.arrow_downward : Icons.arrow_upward,
              color: isIncome ? Color.fromARGB(255, 100, 100, 255)
                  : Color.fromARGB(255, 100, 80, 255),
            )),
      );
  }

  Column buildRightLayer() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            isIncome ? "income" : "outcome",
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color(0x66000000)),
          ),
          Text(
            "\$$stockValue",
            style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Color(0xff000000)),
          )
        ],
      );
  }
}
