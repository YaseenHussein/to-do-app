import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeOftext = 40.0;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(
              Icons.menu,
            ),
            onPressed: () {
              print("hi my frint");
            },
          ),
          actions: [
            IconButton(
              onPressed: () {
                print("you click to call");
              },
              icon: Icon(
                Icons.call,
              ),
            ),
          ],
          title: Text(
            "Frist App",
            style: TextStyle(
              color: Colors.black,
              fontSize: 30.0,
            ),
          ),
        ),
        body: Container(
          color: Colors.greenAccent,
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.blue,
                child: Text(
                  "Text1",
                  style: TextStyle(
                    backgroundColor: Colors.red,
                    fontSize: sizeOftext,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
