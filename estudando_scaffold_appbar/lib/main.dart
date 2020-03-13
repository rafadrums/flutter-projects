import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() => runApp(MaterialApp(
  home: Home(),
  ));

 class Home extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
     int _horas = 0;
     return Scaffold(
       appBar: AppBar(
         title: Text('Programa do BATERA'),
         centerTitle: true,
         backgroundColor: Colors.black38,
         actions: <Widget>[
           IconButton(icon: Icon(Icons.music_note, size: 30,color: Colors.blue))
         ],
       ),
       body: Center(
         child: Text('Hora de Pratica = $_horas',
           style: TextStyle(
             fontSize: 25.0,
             fontWeight: FontWeight.bold,
             color: Colors.white,
           ),
           ),
         ),
       backgroundColor: Colors.blueGrey.shade200,
       bottomNavigationBar: BottomAppBar(
         shape: const CircularNotchedRectangle(),
         child: Container(height: 50.0),
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: () {},
         child: Icon(Icons.add),
       ),
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     );
   }
 }





