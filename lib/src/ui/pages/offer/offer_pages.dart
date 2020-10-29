import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

void main() => runApp(OfferData());

class OfferData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Oferta',
      home: Scaffold(
        appBar: AppBar(
          title: new Center(
              child: new Text(
            'Datos de oferta',
          )),
        ),
        body: Center(
          child: Container(
            child: new Offer(),
          ),
        ),
      ),
    );
  }
}

class Offer extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd");
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
                  labelText: 'Categoria',
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
                  labelText: 'Auto',
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
                  labelText: 'Usuario',
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
                  labelText: 'Pais',
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
                  labelText: 'Ciudad',
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
                  labelText: 'Descripcion',
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
                  labelText: 'Valor dia',
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
