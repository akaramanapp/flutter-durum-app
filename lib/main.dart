import 'package:flutter/material.dart';

void main() {
  runApp(const DurumApp());
}

class DurumApp extends StatefulWidget {
  const DurumApp({super.key});

  @override
  _DurumAppState createState() {
    return _DurumAppState();
  }
}

class _DurumAppState extends State<DurumApp> {
  var _tur = 0;
  final List<String> _satirlar = [];

  void _ekle() {
    var time = DateTime.now();
    setState(() {
      _satirlar.add(time.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Durum'),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _satirlar.length,
                itemBuilder: (BuildContext contex, int index) {
                  return (Container(
                    decoration: const BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.black12, width: 1))),
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    child: Text(
                      _satirlar[index],
                      style: const TextStyle(
                          fontSize: 20,
                          fontFamily: "Roboto Condensed",
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w700),
                    ),
                  ));
                },
              ),
            ),
            Container(
              child: ElevatedButton(
                onPressed: _ekle,
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(), backgroundColor: Colors.green
                ),
                child: const Icon(Icons.add, size: 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
