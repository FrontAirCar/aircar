import 'package:flutter/material.dart';
import 'package:aircar/src/model/automobile_model.dart';

class AutomobileDetailPage extends StatelessWidget {
  Automobile automobile;

  AutomobileDetailPage({this.automobile});

  var valor1 = TextEditingController();
  var valor2 = TextEditingController();
  var valor3 = TextEditingController();
  var valor4 = TextEditingController();
  var valor5 = TextEditingController();
  var valor6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    valor1.text = automobile.placa;
    valor2.text = automobile.marca;
    valor3.text = automobile.modelo;
    valor4.text = automobile.aniu.toString();
    valor5.text = automobile.color;
    valor6.text = automobile.descripcion;
    return Scaffold(
      appBar: AppBar(
        title: Text('Autos'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: <Widget>[
              new TextField(
                controller: valor1,
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
                controller: valor2,
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
                controller: valor3,
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
                controller: valor4,
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
                controller: valor5,
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
                controller: valor6,
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
      ),
    );
  }

  Widget _btnCreate(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          new RaisedButton(
            child: Text('Modificar'),
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
