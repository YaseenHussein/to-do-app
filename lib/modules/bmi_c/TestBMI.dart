import 'dart:ffi';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_app/modules/bmi_c/BMIC.dart';

import 'BMIResualtScreen.dart';

class BMITtest extends StatefulWidget {
  const BMITtest({super.key});

  @override
  State<BMITtest> createState() => _BMITtestState();
}

bool isMale = true;
double heightW = 120.0;
int WeightW = 15;
int Age = 15;

class _BMITtestState extends State<BMITtest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(" BMI Calculator"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          isMale = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.blue : Colors.grey[400],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 80,
                              color: isMale ? Colors.white : Colors.black,
                            ),
                            Text(
                              "ذكر",
                              style: TextStyle(
                                fontSize: 30.0,
                                color: isMale ? Colors.white : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (() => setState(() {
                            isMale = false;
                          })),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isMale ? Colors.grey[400] : Colors.blue,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 80,
                              color: !isMale ? Colors.white : Colors.black,
                            ),
                            Text(
                              "انثى",
                              style: TextStyle(
                                fontSize: 30.0,
                                color: !isMale ? Colors.white : Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "الطول",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25.0,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${heightW.round()}",
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          "cm",
                        ),
                      ],
                    ),
                    Slider(
                      value: heightW,
                      max: 220.0,
                      min: 80,
                      onChanged: (value) {
                        setState(() {
                          heightW = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "العمر",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "${Age}",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    Age--;
                                  });
                                },
                                /////////////////////////////////////////////
                                heroTag: 'age-',
                                ////////////////////////////////////////////
                                mini: true,
                                child: Icon(Icons.remove),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    Age++;
                                  });
                                },
                                heroTag: 'age+', /////////////////////////
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[400],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "الوزن",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            "${WeightW}",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    WeightW--;
                                  });
                                },
                                heroTag: 'Weight-',
                                mini: true,
                                child: Icon(
                                  Icons.remove,
                                ),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    WeightW++;
                                  });
                                },
                                heroTag: 'Weight+',
                                mini: true,
                                child: Icon(
                                  Icons.add,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: Colors.blue,
            width: double.infinity,
            child: MaterialButton(
              height: 50.0,
              onPressed: () {
                /////////////////////////////////////////////////////////////////////////
                ////////////////////////////////////////////////////////////////////////
                double result = WeightW / pow(heightW / 100, 2);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BMIResual(
                      age: Age,
                      isMale: isMale ? 'ذكر' : 'انثى',
                      result: result,
                    ),
                  ),
                );
                ///////////////////////////////////////////////////////////////////////
                //////////////////////////////////////////////////////////////////////
              },
              child: Text(
                "Calculator",
                style: TextStyle(fontSize: 20.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
