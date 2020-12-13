import 'package:flutter/material.dart';
 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String msg ="Success";

   

  void _incrementCounter() {
    setState(() {
      _counter++;
      msg ="Incremented";
      
    });
  }
  
   void _decrementCounter() {
    setState(() {
      _counter--;
      msg ="Decremented";
      if(_counter<0){

          _counter=0;
          msg ="You cannot move backward anymore";
      }
      
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.pinkAccent,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pressed this button this many times:',
              style:TextStyle(
                  color:Colors.white,
                  fontWeight: FontWeight.bold,
                  
              )
            ),
            Text(
              '$_counter',
              style: 
                  Theme.of(context).textTheme.display1,
            ),
            Text(
              '$msg',
              style:TextStyle(
                  color:Colors.purple,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
              )
            ),
          ],
        ),
      ),
      floatingActionButton:
      Column(
    mainAxisAlignment: MainAxisAlignment.end, 
       children:[
      FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.arrow_forward_ios),
      ),
      SizedBox(height: 20 ),
      FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Decrement',
        child: Icon(Icons.arrow_back_ios),
      ),
      ],
      ),
    );
  }
}