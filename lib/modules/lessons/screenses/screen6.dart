import 'package:flutter/material.dart';

class screen6 extends StatelessWidget {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(25.0),
                borderRadius: BorderRadiusDirectional.only(
                    topEnd: Radius.circular(25.0),
                    bottomStart: Radius.circular(25.0)),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: AssetImage("images/img.jpg"),
                    width: 200.0,
                    height: 300.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    width: 200.0,
                    color: Colors.black.withOpacity(0.6),
                    child: Text(
                      "Yaseen Hussein",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
