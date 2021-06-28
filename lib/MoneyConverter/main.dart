import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MyHomePage(title: 'Money converter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _moneyValue = 0;

  // void _incrementCounter() {
  //   setState(() {
  //
  //     _moneyValue++;
  //   });
  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Your requested value',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              '$_moneyValue RON',
              style: Theme.of(context).textTheme.headline4,
            ),
            TextField(
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,
              ),
              onChanged: (String value) {
                setState(() {
                  if (value.isEmpty) {
                    _moneyValue = 0;
                  } else {
                    _moneyValue = int.parse(value) * 5;
                  }
                });
              },
            ),
            Text(
              'EUR',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.green,

              ),
            )
          ],
        ),
      ),
    );
  }
}
