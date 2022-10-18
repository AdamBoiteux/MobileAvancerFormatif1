import 'package:flutter/material.dart';
import 'package:formatif/page2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: Column(
            children: [
              Row(
              children: [
              Expanded(
              child: Container(alignment: Alignment.center,
                  color: Colors.blue,
                  child: const Padding(
                    padding: EdgeInsets.all(50.0),
                    child: Text("Adam Boiteux"),
                  ),
                ),
              ),
            ],
          ),
              TextButton(child: Text('Page 1'),
                  onPressed: () {}),
              TextButton(child: Text('Page 2'),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => page2App(),
                    ),);
                  }),
        ],
        ),
      ),
      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation){
            if (orientation == Orientation.landscape) {
              return _buildLandscapes();
            } else {
              return _buildVertical();
            }
          },
        ),
      ),
    );
  }
}

Widget _buildVertical(){
  return Column(
    children: <Widget>[
      Expanded(flex: 1,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.deepPurple
          ),
        ),
      ),
      Expanded(flex: 1,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.deepOrange
          ),
        ),
      ),
    ],
  );
}

Widget _buildLandscapes(){
  return Row(
    children: <Widget>[
      Expanded(flex: 1,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.deepPurple
          ),
        ),
      ),
      Expanded(flex: 1,
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.deepOrange
          ),
        ),
      ),
    ],
  );
}