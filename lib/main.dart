import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 100),
            Expanded(
              flex: 1,
              child: TextButton(
                child: Text('back'),
                onPressed: () {
                  print('back');
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 50,
                      width: 100,
                      color: Colors.grey.withOpacity(0.3),
                      child: Text(
                        'up',
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    onPressed: () {
                      print('up');
                    },
                  ),
                  TextButton(
                    child: Text('down'),
                    onPressed: () {
                      print('down');
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: TextButton(
                child: Text('right'),
                onPressed: () {
                  print('right');
                },
              ),
            ),
            SizedBox(width: 100),
          ],
        ),
      ),
    );
  }
}
