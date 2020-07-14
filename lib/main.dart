import 'package:flutter/material.dart';
import 'package:slate/slate.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Slate';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC41A3B),
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        // elevation: 0.0,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 8.0,
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  color: Color(0xFFC41A3B),
                  child: Center(
                    child: Icon(
                      Icons.card_travel,
                      size: 64.0,
                      color: Color(0xFFFBE0E6),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Card',
                  style: TextStyle(
                    color: Color(0xFFFBE0E6),
                    fontSize: 32.0,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Slate(
                color: Color(0xFFC41A3B),
                rounding: 4.0,
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  child: Center(
                    child: Icon(
                      Icons.credit_card,
                      size: 64.0,
                      color: Color(0xFFFBE0E6),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Slate',
                  style: TextStyle(
                    color: Color(0xFFFBE0E6),
                    fontSize: 32.0,
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
