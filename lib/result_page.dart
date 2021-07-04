import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_scale/flutter_scale.dart';
import 'package:project/concerned_party.dart';
import 'main.dart';
import 'mymail.dart' as globals;
class ResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ResultPage(),
    );
  }
}

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  final myController = TextEditingController();

  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LoginPage())
        );
        // globals.Authentication().signOut();
        break;
      case 'Settings':
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: SizedBox(
          child: Text('${globals.mail}'),
        ),
        actions: <Widget>[
          PopupMenuButton(
            icon: CircleAvatar(
              child: Icon(Icons.camera_alt_outlined),
              backgroundColor: Colors.white,
            ),
            onSelected: handleClick,
            itemBuilder: (BuildContext context) {
              return {'Logout', 'Settings'}.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            },
          ),
        ],
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: [
              SizedBox(height: 10.0,),
              Text(
                "Hello ${globals.mail}! We would like to ask some questions concerning your beloved "
                    "whom you suspect to be depressed. On this page, only enter the name "
                    "of this person.",
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
              SizedBox(height: 30.0,),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                  hintText: 'Enter the name of your friend/beloved',
                  hintStyle: TextStyle(
                    fontSize: 20.0,
                    color: Colors.grey
                  ),
                ),
              ),
              SizedBox(height: 50.0,),
              Center(
                child: ElevatedButton(
                    onPressed: () {
                      if (myController.text == '') {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return AlertDialog(
                                content: Text(
                                  'Please enter the name to proceed',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              );
                            }
                        );
                      }
                      else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Landing())
                        );
                      }
                      globals.name = myController.text;
                    },
                    child: Text(
                      'Proceed',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                      ),
                    ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurpleAccent
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
