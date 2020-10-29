import 'package:flutter/material.dart';

void main() => runApp(CreateAuto());

class CreateAuto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Autos',
      home: Scaffold(
        appBar: AppBar(
          title: new Center(
              child: new Text(
            'Registro de autos',
          )),
        ),
        body: Center(
          child: Container(
            child: new Automobile(),
          ),
        ),
      ),
    );
  }
}

class Automobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: 'Marca',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Modelo',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Año',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Kilometraje',
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
                  labelText: 'Condición',
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
                  labelText: 'Combustible',
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
                  labelText: 'Color',
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
                  labelText: 'Transmisión',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Puertas',
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
                  labelText: 'Placa',
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
                  labelText: 'Descripción',
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
              Navigator.pushNamed(context, '/register');
            },
          ),
        ],
      ),
    );
  }
}
