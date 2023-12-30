/**
 * Author: Giovanni Rasera
 */

import 'dart:async';

import 'package:datascreen/list_of_mountains.dart';
import 'package:flutter/material.dart';

class Mountain{
  Mountain({required this.name, required this.meters, required this.info, required this.location});
  static Mountain fromJson(dynamic input){

      final n = input["name"];
      final m = input["met"];
      final i = input["inf"];
      final l = input["loc"];

      if(n is String && m is int && i is String && l is String){
        var ret =  Mountain(name: n, meters: m, info: i, location: l);
      
        return ret;
      }else
      {
        
        var ret =  Mountain(name: "", meters: 0, info: "", location: "");
        return ret;
      }

  }

  @override
  String toString(){
    return "$name at $meters m, info: $info | $location";
  }

  String name = "";
  int meters = 0;
  String info = "";
  String location = "";
}

void clearAndCreateVector() async {
  for(int i = 0; i < 1600; i++){
    var t = mountainsJson[i];
    final r = Mountain.fromJson(t);
    print(r);
  }
}

void main() async {
  clearAndCreateVector();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Everest Data Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  double _counter = 0;
  Stopwatch _stopwatch = Stopwatch();
  late Timer timer;
  bool startStop = true;
  String elapsedTime = '';

  void _incrementCounter() {
    setState(() {
     _counter++;
    });
  }
  
  void _decrementCounter() {
    setState(() {
      if(_counter > 0){
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Piani: ', style: Theme.of(context).textTheme.headlineMedium,),
                Text('$_counter', style: Theme.of(context).textTheme.headlineMedium,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Scalati: ', style: Theme.of(context).textTheme.headlineMedium,),
                Text('${_counter * 3} m, ${_counter * 3 / 1000} km', style: Theme.of(context).textTheme.headlineMedium,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Tempo: ', style: Theme.of(context).textTheme.headlineMedium,),
                Text('${elapsedTime}', style: Theme.of(context).textTheme.headlineMedium,),
              ],
            ),
            Divider(height: 100),
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
                FloatingActionButton(
                  onPressed: _decrementCounter,
                  tooltip: 'Decrement',
                  child: const Icon(Icons.remove, color: Colors.red,),
                ),
                FloatingActionButton(
                  onPressed: startWatch,
                  tooltip: 'Start Timer',
                  child: const Icon(Icons.punch_clock, color: Colors.green,),
                ),
                FloatingActionButton(
                  onPressed: stopWatch,
                  tooltip: 'Stop Timer',
                  child: const Icon(Icons.lock_clock, color: Colors.red),
                ),
              ],
        
            ),
          ],
        ),
      ),
        // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  // credit to: https://stackoverflow.com/questions/57440636/flutter-start-and-stop-timer-using-same-button
  // https://stackoverflow.com/a/57441158
  startOrStop() {
    if(startStop) {
      startWatch();
    } else {
      stopWatch();
    }
  }

  updateTime(Timer timer) {
    if (_stopwatch.isRunning) {
      setState(() {
        print("startstop Inside=$startStop");
        elapsedTime = transformMilliSeconds(_stopwatch.elapsedMilliseconds);
      });
    }
  }

  startWatch() {
    setState(() {
      startStop = false;
      _stopwatch.start();
      timer = Timer.periodic(Duration(milliseconds: 10), updateTime);
    });
  }

  stopWatch() {
    setState(() {
      startStop = true;
      _stopwatch.stop();
      setTime();
    });
  }

  setTime() {
    var timeSoFar = _stopwatch.elapsedMilliseconds;
    setState(() {
      elapsedTime = transformMilliSeconds(timeSoFar);
    });
  }

  transformMilliSeconds(int milliseconds) {
    int hundreds = (milliseconds / 10).truncate();
    int seconds = (hundreds / 100).truncate();
    int minutes = (seconds / 60).truncate();
    int hours = (minutes / 60).truncate();

    String hoursStr = (hours % 60).toString().padLeft(2, '0');
    String minutesStr = (minutes % 60).toString().padLeft(2, '0');
    String secondsStr = (seconds % 60).toString().padLeft(2, '0');
    String hundredsStr = (hundreds % 100).toString().padLeft(2, '0');

    return "$hoursStr:$minutesStr:$secondsStr:$hundredsStr";
  }

  // https://stackoverflow.com/a/57441158
}
