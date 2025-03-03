import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout Part 1',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(title: 'Demo Layout Part 1'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Welcome,",
                        style: TextStyle(
                          color: Color(0xff7367f0),
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 0.25,
                        ),
                      ),
                      Text(
                        "2211102085 - Dodi Bayu Prasanto",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff4b4b4b),
                        ),
                      ),
                    ],
                  ),
                  const CircleAvatar(radius: 20),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 35),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xff4839eb), Color(0xff7367f0)],
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Satatus tes TOEFL Anda:',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                  SizedBox(height: 8),
                  Text(
                    "LULUS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.25,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Listening\n      80',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Structure\n      80',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          'Reading\n        80',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              child: Text(
                'Riwayat Tes',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
