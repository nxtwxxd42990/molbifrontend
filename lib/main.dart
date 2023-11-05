import 'package:flutter/material.dart';
import 'package:miniproject/pages/favorite.dart';
import 'package:miniproject/pages/home.dart';
import 'package:miniproject/pages/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;
  late int index = 0;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  late int index = 0;
  final tabs = [
    Homepage(),
    // Favorite(),
    Login(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        iconSize: 35,
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.greenAccent,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.favorite),
            label: "Favorite",
            backgroundColor: Colors.amber.shade800,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue.shade800,
          ),
        ],
        onTap: (index) {
          //print(Product());
          setState(() {
            _currentIndex = index;
          });
          //Navigator.push(context, MaterialPageRoute(builder: ))
        },
      ),
    );
  }
}
