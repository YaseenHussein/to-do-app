import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/modules/login/login2.dart';

class BMIResual extends StatelessWidget {
  final String isMale;
  final double result;
  final int age;
  BMIResual({required this.isMale, required this.result, required this.age});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator Reasult"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_sharp),
          onPressed: () {
            /////////////////////////////////////////////////////////////////////////////////////////////
            Navigator.pop(context); //لرجوع في حال عم استخدام الافتراضي
            ///////////////////////////////////////////////////////////////////////////////////////////
          },
        ),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "الجنس : ${isMale}",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "الناتج : ${result.round()}",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "العمر : $age",
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
