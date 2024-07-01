import 'package:flutter/material.dart';

class BottomSheetSample extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 238, 197, 210),
      body: Center(
        child:Text(
          'BottomSheet'
        ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            showBottomSheet(context);
          },
          child: Icon(Icons.add)
          ),
    );
  }

  Future<void> showBottomSheet(BuildContext ctxt) async{
    showModalBottomSheet(
      context: ctxt, 
      builder: (cntxt){
        return Container(
          width: double.infinity,
          height: 500,
          color: Color.fromARGB(255, 46, 22, 5),
          child: TextButton(
            onPressed: (){
              Navigator.pop(cntxt);
            },
            child: Text('Close',
            style: TextStyle(
              color: Colors.white,
            ),
            ),
            ),
        );
      }
      );
  }
}