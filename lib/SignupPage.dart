import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:email_validator/email_validator.dart';
import 'mymail.dart' as globals;
// import 'dart:async';

// import 'package:path/path.dart';
// import 'package:sqflite/sqflite.dart';

import 'choice_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MaterialApp(
    home: SignupPage(),
  ));
}

class FormModel {
  String name;
  String emailAddress;
  String password;

  FormModel({this.name, this.emailAddress, this.password});
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();

  final fb = FirebaseDatabase.instance;
  final email = 'EMAIL';
  final _formKey = GlobalKey<FormState>();
  final model = FormModel();
  final myController = TextEditingController();

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
          'Signup Page',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: ListView(
          children: [
            Text(
              'Fill in your details below to sign up:',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 18.0),
            ),
            Divider(height: 50.0, color: Colors.grey[600]),
            Form(
              autovalidateMode: AutovalidateMode.always,
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Full name',
                        hintStyle: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.grey,
                            fontSize: 18.0),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please fill in this section';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        model.name = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ListTile(
                    title: TextFormField(
                      controller: myController,
                      decoration: InputDecoration(
                        hintText: 'Email',
                        hintStyle: TextStyle(
                            letterSpacing: 2.0,
                            color: Colors.grey,
                            fontSize: 18.0),
                      ),
                      validator: (value) {
                        if (EmailValidator.validate(value)) {
                          return null;
                        }
                        if (value.isEmpty) {
                          return 'This field cannot be empty';
                        }
                        return 'Please enter valid email';
                      },
                      onSaved: (value) {
                        model.emailAddress = value;
                      },
                    ),
                  ),
                  SizedBox(height: 30.0),
                  ListTile(
                    title: TextFormField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.0,
                            letterSpacing: 2.0),
                      ),
                      validator: (value) {
                        if (!RegExp(
                                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                            .hasMatch(value)) {
                          return 'Please enter a valid password\n'
                              'password should have at least 1 symbol\n'
                              'password should have at least 1 number\n'
                              'Password cannot be less than 8 characters\n'
                              'password should have at least 1 Uppercase letter';
                        }
                        if (value.length <= 8) {
                          return 'Password cannot be less than 8 characters';
                        }
                        if (value.isEmpty) {
                          return 'This field cannot be empty';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        model.password = value;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  ListTile(
                    title: TextFormField(
                      controller: confirmpassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                            color: Colors.grey,
                            letterSpacing: 2.0,
                            fontSize: 18.0),
                      ),
                      validator: (value) {
                        if (value.isEmpty) {
                          return 'Please re-enter password';
                        }
                        print(password.text);

                        print(confirmpassword.text);

                        if (password.text != confirmpassword.text) {
                          return 'Password does not match';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Center(
                    child: ElevatedButton.icon(
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();
                          print(model);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Selection()),
                          );
                        }
                        ref.child(email).set(myController.text);
                        globals.mail = myController.text;
                        // ScaffoldMessenger
                        //     .of(context)
                        //     .showSnackBar(SnackBar(content: Text('Processing data')));
                      },
                      icon: Icon(Icons.assignment),
                      label: RichText(
                          text: TextSpan(
                        text: 'Sign up',
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 2.0,
                        ),
                      )),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.deepPurpleAccent),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
