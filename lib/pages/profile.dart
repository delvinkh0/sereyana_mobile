import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8DADD),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 50), // Add a SizedBox widget to create space at the top
            Text('Profile', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF132043)), textAlign: TextAlign.center),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Username: Delvin', style: TextStyle(fontSize: 20, color: Color(0xFF132043))),
                  Text('Password: ********', style: TextStyle(fontSize: 20, color: Color(0xFF132043))),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            backgroundColor: Color(0xFF132043),
                            content: TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFF8DADD), // Border color
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFF8DADD), // Border color when enabled
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFFF8DADD), // Border color when focused
                                  ),
                                ),
                                labelText: 'New Password',
                                labelStyle: TextStyle(color: Color(0xFFF8DADD)),
                              ),
                              style: TextStyle(color: Color(0xFFF8DADD)),
                            ),
                            actions: <Widget>[
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  OutlinedButton(
                                    child: Text('CANCEL', style: TextStyle(color: Color(0xFFF8DADD))),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Color(0xFFF8DADD)),
                                    ),
                                  ),
                                  OutlinedButton(
                                    child: Text('SET', style: TextStyle(color: Color(0xFF132043))),
                                    onPressed: () {
                                      // Set password logic goes here
                                      Navigator.of(context).pop();
                                    },
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(color: Color(0xFFF8DADD)),
                                      backgroundColor: Color(0xFFF8DADD),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Text('EDIT', style: TextStyle(color: Color(0xFF132043))),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF8DADD),
                      side: BorderSide(color: Colors.black, width: 2),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text('History', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xFF132043)), textAlign: TextAlign.center),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('February 14th, 2022', style: TextStyle(fontSize: 20, color: Color(0xFF132043))),
                    LinearProgressIndicator(
                      value: 22 / 34,
                      color: Color(0xFF132043),
                    ),
                    Text('Generalized Anxiety Disorder - 7 (GAD-7)', style: TextStyle(fontSize: 20, color: Color(0xFF132043))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
