import 'package:flutter/material.dart';

import '../home.dart';

class DoTestPage extends StatefulWidget {
  const DoTestPage({Key? key}) : super(key: key);

  @override
  _DoTestPageState createState() => _DoTestPageState();
}

class _DoTestPageState extends State<DoTestPage> {
  final List<String> questions = [
    'Merasa gugup, cemas, atau tegang',
    'Tidak dapat berhenti atau mengendalikan kekhawatiran',
    'Terlalu khawatir tentang berbagai hal',
    'Kesulitan untuk bersantai',
    'Sangat gelisah sehingga sulit untuk diam',
    'Mudah tersinggung atau mudah marah',
    'Merasa takut seolah-olah sesuatu yang mengerikan mungkin terjadi',
  ];

  final Map<String, int> answers = {
    'Tidak sama sekali': 0,
    'Beberapa hari': 1,
    'Lebih dari setengah hari': 2,
    'Hampir setiap hari': 3,
  };

  final Map<String, int> score = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8DADD),
      appBar: AppBar(
        title: Text('GAD-7 Questionnaire', style: TextStyle(color: Color(0xFF132043))),
        backgroundColor: Color(0xFFF8DADD),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF132043)),
          onPressed: () {
            // You can fill this later with the desired functionality
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
      ),
      body: ListView.builder(
        itemCount: questions.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(questions[index], style: TextStyle(color: Color(0xFF132043))),
              subtitle: Column(
                children: answers.keys.map((String key) {
                  return OutlinedButton(
                    child: Text(key, style: TextStyle(color: score[questions[index]] == answers[key] ? Color(0xFFF8DADD) : Color(0xFF132043))),
                    onPressed: () {
                      setState(() {
                        score[questions[index]] = answers[key]!;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: score[questions[index]] == answers[key] ? Color(0xFFF8DADD) : Color(0xFF132043)),
                      backgroundColor: score[questions[index]] == answers[key] ? Color(0xFF132043) : null,
                    ),
                  );
                }).toList(),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          int totalScore = score.values.reduce((a, b) => a + b);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HasilPage(score: totalScore)),
          );
        },
        child: Icon(Icons.check, color: Color(0xFFF8DADD)),
        backgroundColor: Color(0xFF132043),
      ),
    );
  }
}

class HasilPage extends StatelessWidget {
  final int score;

  const HasilPage({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String result;
    String description;
    String solution;

    if (score >= 0 && score <= 4) {
      result = 'Tidak Ada atau Minimal';
      description = 'Hasil skor 0-4 pada GAD-7 menunjukkan tingkat kecemasan yang sangat rendah atau bahkan tidak ada. Ini menunjukkan bahwa secara umum, anda tidak mengalami gejala kecemasan yang signifikan.';
      solution = 'Tetap menjaga pola hidup sehat, seperti olahraga teratur, tidur yang cukup, dan menjaga keseimbangan hidup secara umum. Fokus pada praktik self-care dapat membantu mencegah perkembangan kecemasan.';
    } else if (score >= 5 && score <= 9) {
      result = 'Ringan';
      description = 'Skor 5-9 menandakan tingkat kecemasan yang ringan. Meskipun gejala mungkin ada, tetapi belum mencapai tingkat yang signifikan.';
      solution = 'Menggunakan teknik manajemen stres seperti meditasi, pernapasan dalam, atau aktivitas relaksasi. Berbicara dengan teman atau keluarga juga bisa memberikan dukungan emosional.';
    } else if (score >= 10 && score <= 14) {
      result = 'Sedang';
      description = 'Skor 10-14 menunjukkan tingkat kecemasan sedang. Anda mungkin mengalami gejala yang cukup signifikan yang dapat mempengaruhi keseharian anda.';
      solution = 'Konsultasi dengan profesional kesehatan mental, seperti psikolog atau psikiater, untuk mendapatkan panduan lebih lanjut. Terapi kognitif perilaku (CBT) bisa menjadi pilihan yang efektif.';
    } else {
      result = 'Parah';
      description = 'Skor 15 atau lebih menandakan tingkat kecemasan yang parah. Gejala mungkin sangat mengganggu dan memerlukan intervensi serius.';
      solution = 'Penting untuk mencari bantuan profesional secepat mungkin. Terapi intensif, mungkin termasuk kombinasi terapi dan obat-obatan, dapat direkomendasikan oleh profesional kesehatan mental. Dukungan sosial juga penting dalam proses pemulihan.';
    }

    return Scaffold(
      backgroundColor: Color(0xFFF8DADD),
      appBar: AppBar(
        title: Text('Hasil', style: TextStyle(color: Color(0xFF132043))),
        backgroundColor: Color(0xFFF8DADD),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF132043)),
          onPressed: () {
            // You can fill this later with the desired functionality
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyHomePage()),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('Hasilnya adalah tingkat anxiety anda: $result', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFF132043)), textAlign: TextAlign.center),
            SizedBox(height: 20),
            Text('Deskripsi:', style: TextStyle(fontSize: 20, color: Color(0xFF132043)), textAlign: TextAlign.center),
            Text(description, style: TextStyle(fontSize: 20, color: Color(0xFF132043)), textAlign: TextAlign.center),
            SizedBox(height: 10),
            Text('Solusi:', style: TextStyle(fontSize: 20, color: Color(0xFF132043)), textAlign: TextAlign.center),
            Text(solution, style: TextStyle(fontSize: 20, color: Color(0xFF132043)), textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
