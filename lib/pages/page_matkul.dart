import 'package:flutter/material.dart';
import 'dart:math' as math;

class PageMatkul extends StatelessWidget {
  const PageMatkul({super.key});

  @override
  Widget build(BuildContext context) {
    final List bulan = [
      "Pengukuran Kinerja & Evaluasi SI",
      "Perencanaan Sumber Daya Perusahaan",
      "Konstruksi dan Pengujian Perangkat Lunak",
      "Manajemen Pengadaan dan Investasi TI",
      "Pemrograman Perangkat Bergerak",
      "KKN",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Mata Kuliah"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
                      .withOpacity(1.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(bulan[index], style: TextStyle(fontSize: 30)),
                  ),
                );
              },
              itemCount: bulan.length,
            ),
          ),
          FloatingActionButton(
              onPressed: () {
                Navigator.pushNamed(context, "/kutipan");
              },
              child: Icon(Icons.keyboard_arrow_right))
        ],
      ),
    );
    ;
  }
}
