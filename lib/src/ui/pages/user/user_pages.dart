import 'package:flutter/material.dart';

void main() => runApp(CreateUser());

class CreateUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Usuario',
      home: Scaffold(
        appBar: AppBar(
          title: new Center(
              child: new Text(
            'Registro de Usuarios',
          )),
        ),
        body: Center(
          child: Container(
            child: new User(),
          ),
        ),
      ),
    );
  }
}

class User extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'No.Documento',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Nombre(s)',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Apellido(s)',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Direccion',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Telefono',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  labelText: 'E-mail',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              obscureText: true,
              decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 20.0,
            ),
            _btnCreate(context)
          ],
        ),
      ),
    );
  }

  Widget _btnCreate(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          new RaisedButton(
            child: Text('Registrar'),
            padding:
                const EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
                side: BorderSide(color: Colors.blue)),
            textTheme: ButtonTextTheme.primary,
            color: Colors.blue,
            onPressed: () {
              Navigator.pushNamed(context, '/create');
            },
          ),
        ],
      ),
    );
  }
}
