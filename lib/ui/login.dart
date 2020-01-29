import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new LoginState ();
  }

}

class LoginState extends State<Login> {

  final TextEditingController _userController =new TextEditingController();
  final TextEditingController _passwordController =new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        centerTitle:true,
        backgroundColor: Colors.blueAccent,
      ),

      backgroundColor: Colors.blueGrey,

      body:  new Container(
        alignment: Alignment.topCenter,
        child: new Column(
          children: <Widget>[
            new Image.asset(
           "assets/images/ice.png",
             width: 100.0,
             height: 100.0,

          ),

            new Container(
              height: 180.0,
              width: 380.0,
              color: Colors.white,
              child: new Column(
                children: <Widget>[
                  new TextField(
                    controller: _userController,
                    decoration: new InputDecoration(
                      hintText: "Username",
                      icon: new Icon(Icons.person)
                    ),
                  ),


                  new TextField(
                    controller: _passwordController,
                    decoration: new InputDecoration(
                        hintText: "Password",
                        icon: new Icon(Icons.lock)
                    ),
                  ),

                  new Padding(padding:new EdgeInsets.all(10.5)),
                  new Center(
                    child: new Row(
                      children: <Widget>[
                        new Container(
                          margin:const EdgeInsets.only(left:38.0),
                          child: new RaisedButton(
                              onPressed:()=> debugPrint("Login"),
                          color: Colors.redAccent,
                          child: new Text("Login",
                          style: new TextStyle(color: Colors.white,
                          fontSize: 16.9))),
                        ),

                        new Container(
                          margin:const EdgeInsets.only(left:120.0),
                          child: new RaisedButton(
                              onPressed:()=> debugPrint("Clear"),
                              color: Colors.redAccent,
                              child: new Text("Clear",
                                  style: new TextStyle(color: Colors.white,
                                      fontSize: 16.9))),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),

            new Padding(
                padding: const EdgeInsets.all(14.0)),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text("Welcome Israel",
                style: new TextStyle(color: Colors.white,
                fontSize: 19.4,
                fontWeight: FontWeight.w500),)
              ],
            )
          ],
        ),
      ),
    );
  }
}