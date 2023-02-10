import 'package:flutter/material.dart';

//import 'see.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'welcome Demo',
      theme: ThemeData(
        primaryColor: const Color(0xff0A0028),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
      backgroundColor: Color(0xff0A0028),
      appBar: AppBar(
        backgroundColor: Color(0xff0A0028),
        actions: [
          Row(
            children: [
              IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {
                    setState(() {});
                  }),
              IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {
                    setState(() {});
                  }),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100.0,
            ),
            const Text(
              '김태희님 ❤ 송하연님' '\n\n' '       함께 기록한지' '\n' '      400(변수)일째',
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/space.png')),
          ],
        ),
      ),
    );
  }
}
