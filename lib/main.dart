import 'package:flutter/material.dart';

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
      home: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children:[
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.black,
                  width: 99,
                  height: 99,),
                  ],
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children:[
                Container(
                  color: Colors.yellow,
                  width: 100,
                  height: 100,
                ),
                Container(
                  color: Colors.black,
                  width: 99,
                  height: 99,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(color: Colors.cyan, height: 50, width: 50,),
                Container(color: Colors.pinkAccent, height: 50, width: 50,),
                Container(color: Colors.purple, height: 50, width: 50,),
              ],
            ),
            Container(
              color: Colors.amber,
              height:30,
              width: 3000,
              child: Text(
                  'Diamante amarelo',
                  style:TextStyle(
                  color:Colors.black,
                  fontSize: 28,
                ),
                  textAlign: TextAlign.center,
              ),
            ),
            Container(
              color: Colors.blueAccent,
              height:30,
              width: 3000,
              child: Text(
                'Diamante azul',
                  style:TextStyle(
                  color:Colors.black,
                  fontSize: 28,
                ),
                textAlign: TextAlign.center,

              ),
            ),
            ElevatedButton(onPressed: (){
              print('Você apertou o botão');
            }, child: Text('Aperte o botão'),)
          ],
        ),
      ),
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
