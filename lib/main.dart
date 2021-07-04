import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
// import 'package:firebase/firebase.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:provider/provider.dart';

import 'package:project/mymail.dart' as globals;

// import 'package:flutter/rendering.dart';
import 'choice_page.dart';
import 'SignupPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final fb = FirebaseDatabase.instance;
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  final email = 'EMAIL';

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference();
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text(
          'Login Page',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Container(
              // padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 0.0),
              color: Colors.grey[300],
              child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  key: _formKey,
                  child: ListView(
                    children: <Widget>[
                      SizedBox(
                        height: 15.0,
                      ),
                      Text(
                        'Fill in your details below to login:',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            letterSpacing: 2.0,
                            fontSize: 18.0),
                      ),
                      Divider(
                        height: 30.0,
                        color: Colors.grey[600],
                      ),
                      ListTile(
                        title: TextFormField(
                            controller: myController,
                            decoration: InputDecoration(
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                    fontSize: 18.0,
                                    letterSpacing: 2.0,
                                    color: Colors.grey)),
                            validator: (value) {
                              if (EmailValidator.validate(value)) {
                                return null;
                              }
                              if (value.isEmpty) {
                                return 'This field cannot be empty';
                              }
                              return 'Please enter valid email';
                            }
                            //         EmailValidator.validate(value)
                            //             ? null
                            //             : 'Please enter valid email'
                            ),
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      ListTile(
                        title: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  fontSize: 18.0,
                                  letterSpacing: 2.0,
                                  color: Colors.grey)),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'This field cannot be empty';
                            }
                            if (!RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                                .hasMatch(value)) {
                              return "Password should have at least 1 Uppercase letter\n"
                                  "Password should have at least 1 symbol\n"
                                  "Password should have at least 1 number\n"
                                  "Password cannot be less than 8 characters";
                            }
                            if (value.length <= 8) {
                              return 'Password cannot be less than 8 characters';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                        child: ElevatedButton.icon(
                          onPressed: () {
                            if (_formKey.currentState.validate()) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Selection()),
                              );
                              // ScaffoldMessenger
                              //     .of(context)
                              //     .showSnackBar(SnackBar(content: Text('Processing data')));
                            }
                            ref.child(email).set(myController.text);
                            globals.mail = myController.text;
                            // globals.Authentication().startLoginFlow();
                          },
                          icon: Icon(Icons.login),
                          label: RichText(
                              text: TextSpan(
                                  text: 'Login',
                                  style: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.white,
                                      letterSpacing: 2.0,
                                      fontWeight: FontWeight.bold))),
                          style: ElevatedButton.styleFrom(
                              primary: Colors.deepPurpleAccent),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Center(
                        child: RichText(
                            text: TextSpan(
                                text: 'OR',
                                style: TextStyle(
                                    fontSize: 23.0,
                                    fontWeight: FontWeight.bold,
                                    // fontStyle: FontStyle.italic,
                                    color: Colors.black))),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                        child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignupPage()),
                              );
                              // ScaffoldMessenger
                              //     .of(context)
                              //     .showSnackBar(SnackBar(content: Text('Processing data')));
                            },
                            icon: Icon(Icons.assignment),
                            label: RichText(
                                text: TextSpan(
                              text: 'Sign up',
                              style: TextStyle(
                                fontSize: 24.0,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 2.0,
                              ),
                            )),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.deepPurpleAccent)),
                      ),
                    ],
                  ))),
        ),
      ),
    );
  }
}
