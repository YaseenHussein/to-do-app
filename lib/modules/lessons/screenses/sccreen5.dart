import 'package:flutter/material.dart';

class screen5 extends StatelessWidget {
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
            padding: const EdgeInsets.all(20.0),
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer, //يعمل على قص  الطبقة
              decoration: BoxDecoration(
                //التحكم بالاطار
                borderRadius:
                    //BorderRadius.circular(20.0,),
                    BorderRadiusDirectional.only(
                  topStart: Radius.circular(
                    20.0,
                  ),
                ),
              ),
              child: Stack(
                alignment: Alignment.bottomCenter, //محاذت ال stack
                children: [
                  Image(
                    image: AssetImage('images/icon.png'),
                    width: 200.0,
                    height: 150.0,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    color: Colors.black.withOpacity(0.6),
                    width: 200.0,
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    // padding: EdgeInsets.all(10.0),
                    // padding: EdgeInsetsDirectional.only(bottom:10.0 ,end: 5.0,start:4.0 ,top: 3.5,),
                    child: Text(
                      "Flex Delivery",
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
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
