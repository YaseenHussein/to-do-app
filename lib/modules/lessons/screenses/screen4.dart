import 'package:flutter/material.dart';

class screen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeOftext = 60.0;
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
          "Frist App 2",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        color: Colors.lightGreen,
        width: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
              Container(
                  child: Text(
                "Text my",
                style: TextStyle(
                  fontSize: sizeOftext,
                ),
              )),
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Text my",
                  style: TextStyle(
                    fontSize: sizeOftext,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
