import 'package:flutter/material.dart';
import 'package:serenaya_2/main.dart';
import 'package:serenaya_2/pages/dashboard.dart';
import 'package:serenaya_2/pages/do_test.dart';

import '../home.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8DADD), // Warna latar belakang body
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Buat AppBar transparan
        elevation: 0, // Hilangkan bayangan AppBar
        leading: IconButton( // Tambahkan tombol kembali di sini
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 20), // Atur margin horizontal
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  '7-item Generalized Anxiety Disorder scale (GAD-7)',
                  style: TextStyle(
                    color: Color(0xFF1F4172),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8), // Padding di dalam Container
                ),
                SizedBox(height: 10),
                Text(
                  'Tes ini mengukur tingkat kecemasan umum dengan 7 pertanyaan.',
                  style: TextStyle(fontSize: 14, color: Color(0xFF1F4172)),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Aksi ketika tombol ditekan
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => DoTestPage()),
                    );
                  },
                  child: Text('START TEST'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1F4172), // Warna teks tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: TestPage(),
  ));
}