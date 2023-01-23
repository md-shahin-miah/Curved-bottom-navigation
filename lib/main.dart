import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Flutter Curve Bottom Navigation'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _page = 2;
  final GlobalKey _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.amber,
        key: _bottomNavigationKey,
        index: 2,

        items: const <Widget>[
          Icon(Icons.add_location, size: 30),
          Icon(Icons.dashboard, size: 30),
          Icon(Icons.home, size: 30),
          Icon(Icons.person, size: 30),
          Icon(Icons.notification_important_rounded, size: 30),
        ],
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
      ),
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "Page no : ${_page + 1}",
            style: const TextStyle(fontSize: 50),
          ),
        ),
      ),
    );
  }
}
