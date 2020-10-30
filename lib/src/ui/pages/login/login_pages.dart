import 'package:flutter/material.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: Login(),
    );
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: Container(
        child: ListView(
          children: <Widget>[
            _logo(context),
            _formulario(context),
            _btnLogin(context),
          ],
        ),
      ),
    );
  }

  Widget _logo(BuildContext context) {
    final tamano = MediaQuery.of(context).size.height;
    return Container(
      color: Colors.white,
      height: tamano * 38 / 100,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.chat, size: tamano * 20 / 100, color: Colors.green[900]),
            Icon(Icons.add_comment, size: tamano * 10 / 100, color: Colors.blue)
          ],
        ),
      ),
    );
  }

  Widget _formulario(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.0))))),
              Divider(
                color: Colors.white,
                height: 10.0,
              ),
              TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(50.0))))),
            ],
          ),
        ));
  }

  Widget _btnLogin(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          new RaisedButton(
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 100.0),
            child: Text('Iniciar'),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.blue)),
            textTheme: ButtonTextTheme.primary,
            color: Colors.blue,
            onPressed: () {
              //Navigator.pushNamed(context, '/menu');
            },
          ),
          Divider(
            color: Colors.white,
            height: 10.0,
          ),
          new RaisedButton(
            child: Text('Registrar'),
            padding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 100.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.blue)),
            textTheme: ButtonTextTheme.primary,
            color: Colors.blue[200],
            onPressed: () {
              //Navigator.pushNamed(context, '/CreateUser');
            },
          ),
        ],
      ),
    );
  }
}
