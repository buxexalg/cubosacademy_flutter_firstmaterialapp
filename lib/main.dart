import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CountContainer(),
  ));
}

class CountContainer extends StatefulWidget {
  @override
  _CountContainerState createState() => _CountContainerState();
}

class _CountContainerState extends State<CountContainer> {
  var resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("O Contador")),
          backgroundColor: Colors.grey[900],
        ),
        body: Container(
          color: Colors.grey[850],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                  child: Text(
                'Você pressionou o botão:',
                style: TextStyle(fontSize: 18, color: Colors.white),
              )),
              Center(
                  child: Text(
                '$resultado',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ))
            ],
          ),
        ),
        floatingActionButton:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            margin: EdgeInsets.only(left: 40),
            child: FloatingActionButton(
                backgroundColor: Colors.grey[600],
                onPressed: () {
                  setState(() {
                    if (resultado > 0) {
                      resultado--;
                    }
                  });
                },
                child: Icon(Icons.remove)),
          ),
          FloatingActionButton(
              backgroundColor: Colors.grey[600],
              onPressed: () {
                setState(() {
                  resultado++;
                });
              },
              child: Icon(Icons.add))
        ]));
  }
}
