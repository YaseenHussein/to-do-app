import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../shared/componeuts/componeuts.dart';
import '../bmi_c/BMIC.dart';
import '../bmi_c/TestBMI.dart';

class login2 extends StatefulWidget {
  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  var txtE = TextEditingController();

  var txtP = TextEditingController();

  //////////////////////////////////////////////////////////
  var fromKey = GlobalKey<FormState>();

  /////////////////////////////////////////////////////////
  bool isPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.help,
          ),
          onPressed: () {},
        ),
        actions: [],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            //////////////////////////////
            child: Form(
              key: fromKey,
              ////////////////////////////
              child: Column(
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextInput(
                    controling: txtE,
                    radius: 10,
                    //////////////////////////////////////////////////////////////////
                    validatorFunc: (value) {
                      if (value.toString().isEmpty || txtE.text.trim() == "")
                        return "Email must be not Empty Plase Enter your email";
                      return null;
                    },
                    ///////////////////////////////////////////////////////////////////
                    label: 'Email Address',
                    preFixIcons: Icons.email,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defaultTextInput(
                    controling: txtP,
                    radius: 10,
                    isPassword: isPassword,
                    typeKeybord: TextInputType.visiblePassword,
                    suffixIcons:
                        isPassword ? Icons.visibility : Icons.visibility_off,
                    IconFun: () {
                      setState(() {
                        isPassword = !isPassword;
                      });
                    },
                    validatorFunc: (value) {
                      if (value.toString().isEmpty || txtP.text.trim() == "")
                        return "Password be must not Empty";
                      return null;
                    },
                    label: 'Enter Password',
                    preFixIcons: Icons.lock,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  defualtButton(
                    function: () {
                      ///////////////////////////////////////////////////
                      if (fromKey.currentState!.validate() &&
                          txtE.text.trim() != "") {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => BMITtest(),
                          ),
                        );
                      }
                      ////////////////////////////////////////////////////
                    },
                    txt: 'login',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  defualtButton(
                    /////////////////////////////////////////////
                    function: () {
                      if (fromKey.currentState!.validate()) {
                        print("validate");
                      }
                    },
                    ////////////////////////////////////////////////
                    txt: 'Register',
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      const Text(
                        "I don't have account ?",
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('Create your Account'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
