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
      title: 'Flutter Deo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.lightGreen,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Bidding App'),
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
      _counter+=50;
    });
  }
  void _decrementCounter() {
    if(_counter==0){
      return;
    }
    setState(() {
      _counter-=50;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.blue,

        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.title,style: TextStyle(color:Colors.white),),

          ],
        ),

      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Current Biding Rate is :   ',
            ),
            Text(
              '$_counter',
              // style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),

      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center, // Align buttons to the right
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
          SizedBox(width: 10), // Space between buttons
          FloatingActionButton(
            onPressed: _incrementCounter,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      ),
// This trailing comma makes auto-formatting nicer for build methods.
      // textField:TextField()
    );
  }
}



