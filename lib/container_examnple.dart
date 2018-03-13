import 'package:flutter/material.dart';

class ContainerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black26),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 10.0, color: Colors.black38),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  margin: EdgeInsets.all(4.0),
                  child:
                  Image.asset('images/column_pic1.jpg', fit: BoxFit.fill),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 10.0, color: Colors.black38),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  margin: EdgeInsets.all(4.0),
                  child:
                  Image.asset('images/column_pic2.jpg', fit: BoxFit.fill),
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 10.0, color: Colors.black38),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  margin: EdgeInsets.all(4.0),
                  child:
                  Image.asset('images/column_pic3.jpg', fit: BoxFit.fill),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 10.0, color: Colors.black38),
                      borderRadius: BorderRadius.all(Radius.circular(8.0))),
                  margin: EdgeInsets.all(4.0),
                  child: Image.asset('images/row_pic1.jpg', fit: BoxFit.fill),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
