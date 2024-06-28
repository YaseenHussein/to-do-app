import 'package:flutter/material.dart';

class screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          "Frist App",
        ),
        actions: [
          IconButton(
            onPressed: () {
              print("hi");
            },
            icon: Text(
              "call",
            ),
          ),
          IconButton(
              onPressed: () {
                print("hi Loay");
              },
              icon: Icon(
                Icons.phone_callback_outlined,
              )),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              height: 100.0,
              child: Text(
                "frist Text",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3, //مدي اخذ حجم من ال اكسباند
            child: Container(
              color: Color.fromARGB(255, 21, 246, 149),
              height: 100.0,
              child: Text(
                "second Text",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
              height: 100.0,
              child: Text(
                "thrid Text",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Color.fromARGB(255, 31, 26, 28),
              height: 100.0,
              child: Text(
                "fourth Text",
                style: TextStyle(
                  color: Colors.red,
                  fontFamily: 'Monotype Koufi',
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
