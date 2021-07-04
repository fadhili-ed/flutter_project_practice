import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'patient_page.dart' as patient;
import 'main.dart';
import 'mymail.dart' as globals;

class SwipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Landing(),
    );
  }
}

class Landing extends StatefulWidget {
  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  final controller = PageController(initialPage: 0);
  int _radioValue1 = -1;
  int _radioValue2 = -1;
  int _radioValue3 = -1;
  int _radioValue4 = -1;
  int _radioValue5 = -1;
  int _radioValue6 = -1;
  int _radioValue7 = -1;
  int _radioValue8 = -1;
  int _radioValue9 = -1;
  int _radioValue10 = -1;
  int _radioValue11 = -1;
  int _radioValue12 = -1;
  int dPoints = 0;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue1 = value;

      switch (_radioValue1) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange2(int value) {
    setState(() {
      _radioValue2 = value;

      switch (_radioValue2) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange3(int value) {
    setState(() {
      _radioValue3 = value;

      switch (_radioValue3) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange4(int value) {
    setState(() {
      _radioValue4 = value;

      switch (_radioValue4) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange5(int value) {
    setState(() {
      _radioValue5 = value;

      switch (_radioValue5) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange6(int value) {
    setState(() {
      _radioValue6 = value;

      switch (_radioValue6) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange7(int value) {
    setState(() {
      _radioValue7 = value;

      switch (_radioValue7) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange8(int value) {
    setState(() {
      _radioValue8 = value;

      switch (_radioValue8) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange9(int value) {
    setState(() {
      _radioValue9 = value;

      switch (_radioValue9) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange10(int value) {
    setState(() {
      _radioValue10 = value;

      switch (_radioValue10) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange11(int value) {
    setState(() {
      _radioValue11 = value;

      switch (_radioValue11) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void _handleRadioValueChange12(int value) {
    setState(() {
      _radioValue12 = value;

      switch (_radioValue12) {
        case 0:
          dPoints++;
          break;
        case 1:
          break;
      }
    });
  }

  void handleClick(String value) {
    switch (value) {
      case 'Logout':
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
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
        padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
        child: PageView(
          controller: controller,
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Once again Thank you for checking up on your beloved, it is important to '
                  'take care of and be aware of there feelings in order to prevent '
                  'a tragedy.\n'
                  '\n'
                  'Please answer the following questions with a yes or no and '
                  'feel free to leave out the questions you cannot answer:',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Divider(height: 60.0, color: Colors.grey),
                Text(
                  "Has ${globals.name} ever experienced a terrible experience "
                  "that has impacted him/her significantly? Examples "
                  "may include but not limited to: "
                  "being the victim of armed assault, or "
                  "witnessing a tragedy happening to someone else?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue1,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue1,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Does ${globals.name} seem be affected by feelings of"
                  " edginess, anxiety, or nerves?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue2,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange2),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue2,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange2),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Has ${globals.name} experienced a week or longer of lower-than-"
                  "usual interests in activities that ${globals.name} usually enjoy?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue3,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange3),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue3,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange3),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Has ${globals.name} ever experienced an 'attack' of fear, anxiety or "
                  "panic?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue4,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange4),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue4,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange4),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Does ${globals.name} seem to have feelings of anxiety or discomfort "
                  "around others?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue5,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange5),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue5,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange5),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Has ${globals.name} been having trouble sleeping, or been "
                  "sleeping too much?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue6,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange6),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue6,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange6),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Has ${globals.name} been looking tired or having little energy "
                  "lately?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue7,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange7),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue7,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange7),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Has ${globals.name} been having a poor appetite or been overeating?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue8,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange8),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue8,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange8),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Has ${globals.name} been having low self-esteem lately, or feeling"
                  " like a failure, or a let down to friends, or family?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue9,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange9),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue9,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange9),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Has ${globals.name} been having trouble concentrating, for example on things"
                  " such as reading, watching television, or even paying attention to "
                  "a conversation?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue10,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange10),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue10,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange10),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Has ${globals.name} been so restless or fidgety and has been moving"
                  " around a lot more than usual?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue11,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange11),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue11,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange11),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Has ${globals.name} been having thoughts of being better off "
                  "dead or being hurt in some way?",
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 0,
                                  groupValue: _radioValue12,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange12),
                              Expanded(
                                child: Text(
                                  "Yes",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                  value: 1,
                                  groupValue: _radioValue12,
                                  activeColor: Colors.deepPurpleAccent,
                                  onChanged: _handleRadioValueChange12),
                              Expanded(
                                child: Text(
                                  "No",
                                  style: TextStyle(fontSize: 18.0),
                                ),
                              )
                            ],
                          ),
                          flex: 1,
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe To next screen',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  "Below, you can enter the link to ${globals.name}'s social media account. "
                  "From there, ${globals.name}'s posts will be scanned to ensure "
                  "detect any signs of depression.",
                  style: TextStyle(
                    fontSize: 20.0,
                    letterSpacing: 2.0,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: 'First URL',
                      labelStyle: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      labelText: 'Second URL',
                      labelStyle: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Text(
                  'Swipe back To previous pages',
                  style: TextStyle(fontSize: 20.0, color: Colors.grey[400]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50.0,
                ),
                Center(
                  child: ElevatedButton.icon(
                    onPressed: findResult,
                    icon: Icon(Icons.assignment),
                    label: RichText(
                        text: TextSpan(
                      text: 'Submit',
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
          ],
        ),
      ),
    );
  }

  void findResult() {
    if (_radioValue1 == -1 &&
        _radioValue2 == -1 &&
        _radioValue3 == -1 &&
        _radioValue4 == -1 &&
        _radioValue5 == -1 &&
        _radioValue6 == -1 &&
        _radioValue7 == -1 &&
        _radioValue8 == -1 &&
        _radioValue9 == -1 &&
        _radioValue10 == -1 &&
        _radioValue11 == -1 &&
        _radioValue12 == -1) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
                "Please answer at least one of the questions in order to get result."),
          );
        },
      );
    } else if ((_radioValue1 == 0 &&
            _radioValue3 == 0 &&
            _radioValue5 == 0 &&
            _radioValue2 == 0) ||
        (dPoints >= 1 && dPoints <= 4) && _radioValue12 == 1 ||
        _radioValue12 == -1) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
              "Thank you for taking your time to answer the given questions. Based on the"
              " answers you have given, it has been determined that ${globals.name} is "
              "experiencing depressions although at the mild level. You are "
              "advised to help ${globals.name} to interact more with people, "
              "to gain ${globals.name}'s trust and converse together more, "
              "help ${globals.name} keep a healthy diet, read, or "
              "practicing ${globals.name}'s hobbies more. Remember to keep "
              "a close eye on ${globals.name} to ensure safety.\n"
              "\n"
              "Result: Mild Stage of depression\n",
              style: TextStyle(fontSize: 18.0, color: Colors.amber),
            ),
          );
        },
      );
    } else if ((_radioValue6 == 0 &&
            _radioValue8 == 0 &&
            _radioValue9 == 0 &&
            _radioValue11 == 0) ||
        (dPoints > 4 && dPoints <= 8) && _radioValue12 == 1 ||
        _radioValue12 == -1) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
              "Thank you for taking your time to answer the given questions. Based on the"
              " answers you have given, it has been determined that ${globals.name} is "
              "experiencing depression at the moderate level. You are advised to seek "
              "help by counselling or therapy for ${globals.name} as soon as possible "
              "before the depression progresses any further.\n"
              "\n"
              "Recommended hotline number to call:  1-866-367-4489\n"
              "Kenya Befrienders: +254722178177\n"
              "Email: befrienderskenya@gmail.com"
              "Result: Moderate stage of depression\n",
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.deepOrangeAccent,
              ),
            ),
          );
        },
      );
    } else if ((_radioValue4 == 0 &&
            _radioValue7 == 0 &&
            _radioValue10 == 0 &&
            _radioValue12 == 0) ||
        (dPoints >= 1 && dPoints <= 12) ||
        (_radioValue1 == 0 &&
            _radioValue2 == 0 &&
            _radioValue3 == 0 &&
            _radioValue4 == 0 &&
            _radioValue5 == 0 &&
            _radioValue6 == 0 &&
            _radioValue7 == 0 &&
            _radioValue8 == 0 &&
            _radioValue9 == 0 &&
            _radioValue10 == 0 &&
            _radioValue11 == 0 &&
            _radioValue12 == 0) ||
        _radioValue12 == 0) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
              "Thank you for taking your time to answer the given questions. Based on the"
              " answers you have given, it has been determined that ${globals.name} is "
              "severely depressed. You are advised to seek help for ${globals.name} "
              "immediately!\n"
              "\n"
              "Recommended hotline number to call:  1-866-367-4489\n"
              "\n"
              "Kenya Befrienders: +254722178177\n"
              "Email: befrienderskenya@gmail.com\n"
              "\n"
              "Oasis Africa: 0725 366614\n"
              "                        0733 366614\n"
              "\n"
              "Result: Severe stage of depression\n",
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.red,
                  fontWeight: FontWeight.bold),
            ),
          );
        },
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(
              "Thank you for taking your time to answer the given questions. Based on the"
              " answers you have given, it has been determined that ${globals.name} is "
              "experiencing depressions although at the mild level. You are "
              "advised to help ${globals.name} to interact more with people, "
              "to gain ${globals.name}'s trust and converse together more, "
              "help ${globals.name} keep a healthy diet, read, or "
              "practicing ${globals.name}'s hobbies more. Remember to keep "
              "a close eye on ${globals.name} to ensure safety.\n"
              "\n"
              "Result: Mild Stage of depression\n",
              style: TextStyle(fontSize: 18.0, color: Colors.amber),
            ),
          );
        },
      );
    }
  }
}
