import 'package:flutter/material.dart';
import 'package:formatif/main.dart';


class page2App extends StatelessWidget {
  const page2App({Key? key}) : super(key: key);

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
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                  builder: (context) => MyApp(),
                ),);}),
            TextButton(child: Text('Page 2'),
                onPressed: () {

                }),
          ],
        ),
      ),
      body: Center(
        child: OrientationBuilder(
          builder: (context, orientation){
            if (orientation == Orientation.landscape) {
              return _buildVertical();
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
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const TextField(
        decoration: InputDecoration(
          hintText: 'Entrer votre nom',
        ),
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              flex: 1,
              child: ElevatedButton(
                child: Text("Annuler"),
                onPressed: () {  },
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                child: Text("Sauvegarder"),
                onPressed: () {  },
              ),
            ),
          ],
        ),
      ),

    ],

  );
}