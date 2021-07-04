library my_prj.globals;
import 'package:flutter/material.dart';
import 'main.dart';

// class MyMail {
//
//   static final MyMail _instance = MyMail._internal();
//
//   // passes the instantiation to the _instance object
//   factory MyMail() => _instance;
//
//   //initialize variables in here
//   MyMail._internal() {
//     _myVariable = "mail";
//   }
//
//   String _myVariable;
//   //
//   //short getter for my variable
//   String get myVariable => _myVariable;
//
//   //short setter for my variable
//   set myVariable(String value) => myVariable = value;
// }

// enum ApplicationLoginState {
//   loggedOut,
//   emailAddress,
//   register,
//   password,
//   loggedIn,
// }
//
// class Authentication extends StatelessWidget {
//   const Authentication({
//     this.loginState,
//     this.email,
//     this.startLoginFlow,
//     this.verifyEmail,
//     this.signInWithEmailAndPassword,
//     this.cancelRegistration,
//     this.registerAccount,
//     this.signOut,
//   });
//
//   final ApplicationLoginState loginState;
//   final String email;
//   final void Function() startLoginFlow;
//   final void Function(
//       String email,
//       void Function(Exception e) error,
//       ) verifyEmail;
//   final void Function(
//       String email,
//       String password,
//       void Function(Exception e) error,
//       ) signInWithEmailAndPassword;
//   final void Function() cancelRegistration;
//   final void Function(
//       String email,
//       String displayName,
//       String password,
//       void Function(Exception e) error,
//       ) registerAccount;
//   final void Function() signOut;
//
//   @override
//   Widget build(BuildContext context) {
//     return LoginPage();
//   }
// }
var name = '';
var mail = '';