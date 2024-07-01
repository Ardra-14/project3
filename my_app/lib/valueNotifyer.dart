import 'package:flutter/material.dart';

class Notifyer extends StatelessWidget{

  ValueNotifier <int> _counter = ValueNotifier(0);

  void incrementCounter(){
    _counter.value = _counter.value + 1;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        body:Center(
          child : Column(
            mainAxisAlignment : MainAxisAlignment.center,
            children : [
              Text('You have pushed the button this many times: '),
              ValueListenableBuilder(
                valueListenable: _counter, 
                builder: (BuildContext ctxt ,int newValue, Widget? child){
                  return Text('$newValue',
                  style: TextStyle(
                    fontSize: 50
                  ),
                  );
                })
            ],
          ),       
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: incrementCounter,
          child: Icon(Icons.add),
          ),
      );
    
  }
}