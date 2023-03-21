import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Инкремент',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const MyHomePage(title: 'Инкремент'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  void _decrementCounter(){
    setState(() {
      _counter--;
    });
  }
  void _zeroCounter(){
    setState(() {
     _counter = 0; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Значение инкремента:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(onPressed: _decrementCounter, tooltip: 'decrement', child: Icon(Icons.remove),hoverColor:Color.fromARGB(255, 255, 0, 0)),
                FloatingActionButton(onPressed: _incrementCounter, tooltip: 'increment', child: Icon(Icons.add), hoverColor: Color.fromARGB(255, 0, 255, 0)),
              ],
            ),
            TextButton(
              onPressed: _zeroCounter,
              child: Text('Обнулить'),
              style: TextButton.styleFrom(
                foregroundColor:Color.fromARGB(150, 105, 105, 105), 
              ),
            )
            ]
        ),
          
        ),

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
