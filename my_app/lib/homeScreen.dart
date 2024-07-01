import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  
  final _list = [
    "Apple",
    "Orange",
    "PineApple"

  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body : Center(
        child:Padding(
          padding: const EdgeInsets.all(50),
          child: DropdownButtonFormField(
            hint: Text("Select Something"),
            items: _list.map((e){
            return DropdownMenuItem(
              value: e,
              child: Text(e)
              );
          }).toList(),
          onChanged: (value){
            print(value);
          },
          ),
        ),
      )
    );
  }
}