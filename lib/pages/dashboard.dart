import 'package:flutter/material.dart';
import 'package:serenaya_2/pages/mindfullness.dart';
import 'package:serenaya_2/pages/test.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8DADD), // Warna latar belakang body
      body: SafeArea(
        child: Center( // Memposisikan konten di tengah
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Menengahkan konten secara vertikal
            children: <Widget>[
              SizedBox(height: 150.0), // Tambahkan ini untuk memberikan jarak ke atas
              Text(
                'One Breath At The Time',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF132043), // Warna teks
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Mengatasi Kecemasan, Dengan Lebih Banyak Tindakan; Solusi untuk mengelola kecemasan ada di sini.',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xFF132043), // Warna teks
                ),
                textAlign: TextAlign.center, // Menengahkan teks secara horizontal
              ),
              SizedBox(height: 20.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Menyebar tombol secara merata di baris
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => TestPage()),
                      );
                    },
                    child: Column( // Teks dalam tombol disusun secara vertikal
                      children: <Widget>[
                        Text(
                          'SELF',
                          style: TextStyle(color: Color(0xFFF8DADD)),
                        ),
                        Text(
                          'ASSESSMENT',
                          style: TextStyle(color: Color(0xFFF8DADD)),
                        ),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF132043), // Warna latar belakang tombol
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MIndfullnessPage()),
                      );
                    },
                    child: Text(
                      'TECHNIQUE',
                      style: TextStyle(color: Color(0xFF132043)),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFF8DADD),
                      side: BorderSide(color: Color(0xFF132043)),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  width: 200,
                  height: 100, // Atur tinggi gambar
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/home.png'),
                      fit: BoxFit.contain, // Mengubah ini untuk memperkecil gambar
                    ),
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
