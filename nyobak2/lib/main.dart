import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Android",
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HalHallo createState() => _HalHallo();
}

class _HalHallo extends State<HomePage> {
  String value;
  String valuep;
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
                    onChanged: (text) {
                      value = text;
                    },
                    decoration: new InputDecoration(
                        hintText: "Masukkan Username Anda",
                        labelText: "Username",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        prefixIcon: Icon(
                          Icons.person,
                        )),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 25.0),
                  ),
                  new TextField(
                    onChanged: (text) {
                      valuep = text;
                    },
                    obscureText: true,
                    decoration: new InputDecoration(
                        hintText: "Masukkan Password Anda",
                        labelText: "Password",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(20.0)),
                        prefixIcon: Icon(
                          Icons.lock,
                        )),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(top: 95.0),
                  ),
                  // ignore: deprecated_member_use
                  new RaisedButton(
                    child: new Text("Login"),
                    color: Colors.orange,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) =>
                            screentwo(value: value, valuep: valuep),
                      ));
                    },
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}

class screentwo extends StatefulWidget {
  String value;
  String valuep;
  screentwo({this.value, this.valuep});

  @override
  _screentwoState createState() => _screentwoState(value, valuep);
}

// ignore: camel_case_types
class _screentwoState extends State<screentwo> {
  String value;
  String valuep;
  _screentwoState(this.value, this.valuep);
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
                "Anda Login Sebagai : $value \n\n\n Dengan Password : $valuep",
                style: new TextStyle(fontFamily: "Serif", fontSize: 20.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
