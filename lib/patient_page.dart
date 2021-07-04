import 'package:flutter/material.dart';
import 'main.dart';
import 'mymail.dart' as globals;

class PatientScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PatientPage(),
    );
  }
}

class PatientPage extends StatefulWidget {
  @override
  State<PatientPage> createState() => _PatientPageState();
}

class _PatientPageState extends State<PatientPage> {
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
                  'Please answer the questions with yes or no',
                  style: TextStyle(
                      fontSize: 18.0,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold),
                ),
                Divider(height: 60.0, color: Colors.grey),
                Text(
                  "Have you ever experienced a terrible experience "
                  "that has impacted you significantly? Examples "
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
                  "Do yo ever feel that you've been affected by feelings\n"
                  "of edginess, anxiety, or nerves?",
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
                  "Have you experienced a week or longer of lower-than-\n"
                  "usual interests in activities that you usually enjoy?",
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
                  "Have you ever experienced an 'attack' of fear, anxiety or\n"
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
                  "Do feelings of anxiety or discomfort around others bother you?",
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
                  "Have you been having trouble sleeping, or been sleeping too much?",
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
                  "Have you been feeling tired or having little energy?",
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
                  "Have you been having a poor appetite or been overeating?",
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
                  "Have you been feeling bad about yourself, or that you are a "
                  "failure, or that you have let yourself, your friend, or family"
                  " down?",
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
                  "Have you been having trouble concentrating, for example on things"
                  " such as reading, or watching television, or listening to "
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
                  "Have you been so restless or fidgety that you have been moving"
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
                  "Have you been having thoughts that you would be better off "
                  "dead or hurting yourself in some way?",
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
              " answers you have given, it has been determined that you are "
              "experiencing depressions although at the mild level. You are "
              "advised to interact more with people, talk to a person you trust, "
              "keep a healthy diet, try to read, or distract yourself from overthinking"
              "by practicing your hobbies more. Remember to tell someone to keep "
              "an eye on you and take proper rest to ensure you replenish your energy.\n"
              "\n"
              "Result: Mild Stage of depression\n"
                  "$dPoints",
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
              " answers you have given, it has been determined that you are "
              "experiencing depression at the moderate level. You are advised to seek "
              "help at a counselling station as soon as possible before the depression"
              " progresses.\n"
              "\n"
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
              " answers you have given, it has been determined that you are "
              "severely depressed. You are advised to seek help at a counselling station"
              "immediately!\n"
              "\n"
              "Recommended hotline number to call:  1-866-367-4489\n"
              "Kenya Befrienders: +254722178177\n"
              "Email: befrienderskenya@gmail.com"
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
              "You are not under depression",
              style: TextStyle(fontSize: 18.0, color: Colors.grey),
            ),
          );
        },
      );
    }
  }
}
