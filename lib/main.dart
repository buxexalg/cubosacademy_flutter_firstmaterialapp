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

  stateOperation(bool addOperation) {
    setState(() {
      resultado = mathButton(resultado, addOperation);
    });
  }

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
              child: FloatActionButton(
                  icone: Icon(Icons.remove),
                  onPress: () {
                    stateOperation(false);
                  })),
          FloatActionButton(
              icone: Icon(Icons.add),
              onPress: () {
                stateOperation(true);
              }),
        ]));
  }
}

class FloatActionButton extends StatelessWidget {
  final Icon icone;
  final Function onPress;

  FloatActionButton({Key key, this.icone, this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: Colors.grey[600], onPressed: onPress, child: icone);
  }
}

int mathButton(int number, bool addButton) {
  if (addButton) {
    number++;
  } else {
    number--;
  }

  return number;
}
