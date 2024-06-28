import 'package:flutter/material.dart';

class screen3 extends StatelessWidget {
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
          width: double.infinity,
          color: Color.fromARGB(219, 226, 226, 223),
          height: double.infinity,
          child: SingleChildScrollView(
            //scrollDirection: Axis.horizontal,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
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
        ));
  }
}
