import 'package:flutter/material.dart';
import 'listapi.dart';

class screentwo extends StatelessWidget {
  String value;
  String valuep;
  screentwo({this.value, this.valuep});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.android),
        title: new Text(
          "Login Android",
          style: new TextStyle(fontFamily: "Serif", fontSize: 20.0),
        ),
      ),
      body: Container(
        padding: new EdgeInsets.all(48.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(
              child: new Text(
                "Anda Login Sebagai : $value \n\n\n Dengan Password : $valuep \n\n",
                style: new TextStyle(
                    fontFamily: "Serif", fontSize: 20.0, color: Colors.black),
              ),
            ),
            new RaisedButton(
              child: new Text("Lihat List"),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Listapi(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
