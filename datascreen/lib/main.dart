/**
 * Author: Giovanni Rasera
 */

import 'dart:async';

import 'package:datascreen/list_of_mountains.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

List<Mountain> mountains = [];

Mountain closestTo(List<Mountain> m, int meters){
  Mountain closest = m[0];

  for(int i = 0; i < m.length; i++){
    Mountain actual = m[i];
    if(actual.meters == 0) continue;

    int distance = actual.meters - meters;

    if(distance >= 0){
      // sono sotto
      if(actual.meters - meters < (closest.meters - meters)){
        closest = actual;
      }
    }
  }

  return closest;
}

void clearAndCreateVector() async {
  for(int i = 0; i < 1600; i++){
    var t = mountainsJson[i];
    final r = Mountain.fromJson(t);

    mountains.add(r);
  }
}

late SharedPreferences g_prefs;

void main() async {
  // Load last info
  g_prefs = await SharedPreferences.getInstance();

  clearAndCreateVector();

  print("We have: ${mountains.length} mountains");

  runApp(MyApp(prefs: g_prefs,));
}

class MyApp extends StatelessWidget {
  MyApp({super.key, required this.prefs});

  SharedPreferences prefs;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Everest Data Screen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blue
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page', prefs: prefs),
    );
  }
}

class DataStore {
  DataStore({required this.prefs}){}
  SharedPreferences prefs;
  final String STAIRS_KEY = "STAIRS_KEY";

  void reset(){
    setCurrentStairs(0);
  }

  int getCurrentStairs(){
    int? res = prefs.getInt(STAIRS_KEY);

    if (res == null){
      setCurrentStairs(0);
      return 0;
    }else{
      return res;
    }
  }

  void setCurrentStairs(int? newStairs){
    if (newStairs == null){
      print("Warn: cannot save newStemps is null");
    }else{
      prefs.setInt(STAIRS_KEY, newStairs);
    }
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title, required this.prefs}){
    ds = DataStore(prefs: prefs);
  }
  final String title;
  SharedPreferences prefs;
  late DataStore ds;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _stairs = 0;
  Stopwatch _stopwatch = Stopwatch();
  late Timer timer;
  bool startStop = true;
  String elapsedTime = '';
  Mountain closest = closestTo(mountains, 0);

  // Data
  double _step_height = 0.17; // in meters
  int _number_of_steps = 18;

  @override void initState() {
    // TODO: implement initState
    super.initState();
    
    _stairs = widget.ds.getCurrentStairs();

    setState(() {
      closest = closestTo(mountains, _stairs);
    });
  }

  double totalHeightCalc(int stairs){
    return stairs * _number_of_steps * _step_height;
  }

  void _incrementCounter() {
    setState(() {
     _stairs+=1;
     widget.ds.setCurrentStairs(_stairs);
     closest = closestTo(mountains,(totalHeightCalc(_stairs).floor()).toInt());
     print(closest);

    });
  }
  
  void _decrementCounter() {
    setState(() {
      if(_stairs > 0){
        _stairs--;
        widget.ds.setCurrentStairs(_stairs);
        closest = closestTo(mountains,(totalHeightCalc(_stairs).floor()).toInt());
        print(closest);
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
                Text('$_stairs', style: Theme.of(context).textTheme.headlineMedium,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Scalati: ', style: Theme.of(context).textTheme.headlineMedium,),
                Text('${totalHeightCalc(_stairs).toStringAsFixed(1)} m, ${(totalHeightCalc(_stairs) / 1000).toStringAsFixed(3)} km', style: Theme.of(context).textTheme.headlineMedium,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Tempo: ', style: Theme.of(context).textTheme.headlineMedium,),
                Text('${elapsedTime}', style: Theme.of(context).textTheme.headlineMedium,),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Obiettivo: ', style: Theme.of(context).textTheme.headlineMedium,),
                Text('${closest}', style: Theme.of(context).textTheme.headlineSmall,),
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

    return "$hoursStr:$minutesStr:$secondsStr"; //:$hundredsStr";
  }

  // https://stackoverflow.com/a/57441158
}
