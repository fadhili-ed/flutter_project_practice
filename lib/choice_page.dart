import 'package:flutter/material.dart';
import 'package:project/concerned_party.dart';
import 'patient_page.dart';
import 'result_page.dart';
import 'main.dart';
import 'mymail.dart' as globals;

void main() {
  runApp(MaterialApp(
    home: Selection(),
  ));
}

class Selection extends StatefulWidget {
  @override
  _SelectionState createState() => _SelectionState();
}

class _SelectionState extends State<Selection> {
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
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: ListView(
          children: [
            // Text(
            //   'Select from either of the individuals below:',
            //   style: TextStyle(
            //       fontWeight: FontWeight.bold,
            //       color: Colors.amber[800],
            //       letterSpacing: 2.0,
            //       fontSize: 20.0),
            // ),
            SizedBox(height: 200.0),
            TextButton.icon(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PatientPage())
                );
              },
              icon: Icon(Icons.sick),
              label: Text(
                'Patient',
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent
              ),
            ),
            Divider(
              height: 80.0,
              color: Colors.blueGrey
            ),
            TextButton.icon(
              onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage())
                );
              },
              icon: Icon(Icons.family_restroom),
              label: Text(
                'Concerned friend/family',
                style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent,
              ),
            )
          ],
        ),
      ),
    );
  }
}
