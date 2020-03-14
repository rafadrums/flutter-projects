import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _lineCode = 0;
  int _coffeLevel = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TADS 5',
          style: TextStyle(
            fontSize: 30.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black38,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.repeat,
                size: 35.0,
                color: Colors.blue,
              ),
              onPressed: null)
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '$_lineCode Linhas de Codigos',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                child: Image.asset('images/coffee.png'),
                width: 100.0,
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Row(
            children: <Widget>[
              Text(
                '$_coffeLevel% Café',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          Row(
            children: <Widget>[
              RaisedButton(
                onPressed: () {
                  setState(() {

                    if(_coffeLevel != 0 ){
                      _coffeLevel = _coffeLevel - 10;
                      while(_coffeLevel > 0){
                        _lineCode++;
                      }
                    }
                  });
                },
                child: Text(
                  'PROGRAMAR!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                    color: Colors.black,
                  ),
                ),
                color: Colors.blue[700],
              )
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          )
        ],
      ),
      backgroundColor: Colors.blueGrey.shade200,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Container(height: 50.0),
        color: Colors.black54,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
/*
FlatButton(
                child: Text(
                  'PROGRAMAR',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              )
 */
