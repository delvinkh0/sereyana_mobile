import 'package:flutter/material.dart';

class MIndfullnessPage extends StatefulWidget {
  const MIndfullnessPage({Key? key}) : super(key: key);

  @override
  _MIndfullnessPageState createState() => _MIndfullnessPageState();
}

class _MIndfullnessPageState extends State<MIndfullnessPage> {
  bool isPlaying = false; // Menentukan status pemutaran audio

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8DADD), // Warna latar belakang body
      appBar: AppBar(
        backgroundColor: Colors.transparent, // Buat AppBar transparan
        elevation: 0, // Hilangkan bayangan AppBar
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(flex: 1), // Spacer untuk memberikan ruang di atas
              Text(
                'Mindfullness',
                style: TextStyle(
                  fontSize: 36.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF132043), // Warna teks
                ),
              ),
              SizedBox(height: 20), // Mengatur jarak antara teks dan gambar
              Expanded(
                flex: 5, // Membiarkan gambar memenuhi ruang yang lebih besar
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/mindfullness.png'),
                      fit: BoxFit.contain, // Mengubah ini untuk memperkecil gambar
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              IconButton(
                icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow), // Mengubah ikon berdasarkan status pemutaran audio
                iconSize: 64.0,
                color: Color(0xFF132043), // Sesuaikan dengan warna yang diinginkan
                onPressed: () {
                  setState(() {
                    // Toggle status pemutaran audio
                    isPlaying = !isPlaying;
                  });
                },
              ),
              Spacer(flex: 1), // Spacer untuk memberikan ruang di bawah
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MIndfullnessPage(),
  ));
}
