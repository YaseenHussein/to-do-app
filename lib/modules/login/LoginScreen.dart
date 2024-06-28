import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class loginScreen extends StatelessWidget {
  var txtE = TextEditingController();
  var txtP = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  controller: txtE,
                  keyboardType: TextInputType.emailAddress,
                  // onFieldSubmitted: (value) {
                  //   print(value);
                  // },
                  // onChanged: (value) {
                  //   print(value);
                  // },
                  decoration: InputDecoration(
                    labelText: 'Email Address',
                    //hintText: 'Email Adress',
                    prefixIcon: Icon(
                      Icons.email,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                //////////////////////
                TextFormField(
                  controller: txtP,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  // onFieldSubmitted: (value) {
                  //   print(value);
                  // },
                  // onChanged: (value) {
                  //   print(value);
                  // },
                  decoration: InputDecoration(
                    labelText: 'Password',
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(),
                  ),
                ),
                ///////////////////////
                SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 50.0,
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () {
                      print(txtE.text);
                      print(txtP.text);
                    },
                    color: Colors.blue,
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'I don\' have account ?',
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sing in",
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
