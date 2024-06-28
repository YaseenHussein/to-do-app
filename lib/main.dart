import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:my_app/layout/homeLayout.dart';
import 'package:my_app/modules/massanger/massangerTest.dart';
import 'package:my_app/shared/bloc_observer.dart';
import 'modules/bmi_c/BMIC.dart';
import 'modules/bmi_c/TestBMI.dart';
import 'modules/lessons/screenses/showButtomSheet.dart';
import 'modules/login/login2.dart';
import 'modules/lessons/counter/statfullTest.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const BMITtest(),
    );
  }
}
