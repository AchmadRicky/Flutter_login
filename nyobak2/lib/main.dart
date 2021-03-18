import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Android",
    home: new HalHallo(),
  ));
}

class HalHallo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          leading: new Icon(Icons.android),
          title: new Text(
            "Login Android",
            style: new TextStyle(fontFamily: "Serif", fontSize: 20.0),
          ),
        ),
        body: new ListView(
          children: [
            new Container(
              color: Colors.white,
              padding: new EdgeInsets.all(48.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  new Icon(
                    Icons.account_circle_outlined,
                    size: 150.0,
                    color: Colors.blue,
                  ),
                  new Center(
                      child: new Text(
                    "Login",
                    style: new TextStyle(fontSize: 40.0, fontFamily: "Courier"),
                  )),
                  new Padding(
                    padding: new EdgeInsets.only(top: 15.0),
                  ),
                  new TextField(
                    decoration: new InputDecoration(
                        hintText: "Masukkan Username Anda",
                        labelText: "Username",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 25.0),
                  ),
                  new TextField(
                    obscureText: true,
                    decoration: new InputDecoration(
                        hintText: "Masukkan Password Anda",
                        labelText: "Password",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0))),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 95.0),
                  ),
                  new RaisedButton(
                    child: new Text("Login"),
                    color: Colors.orange,
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
