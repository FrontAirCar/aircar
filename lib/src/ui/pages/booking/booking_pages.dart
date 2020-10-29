import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

void main() => runApp(BookingData());

class BookingData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reserva',
      home: Scaffold(
        appBar: AppBar(
          title: new Center(
              child: new Text(
            'Datos de reserva',
          )),
        ),
        body: Center(
          child: Container(
            child: new Booking(),
          ),
        ),
      ),
    );
  }
}

class Booking extends StatelessWidget {
  final format = DateFormat("yyyy-MM-dd");
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'No.Oferta',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            DateTimeField(
              format: format,
              onShowPicker: (context, currentValue) {
                return showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
              },
              decoration: InputDecoration(
                  labelText: 'Fecha Entrega',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)))),
            ),
            Divider(
              color: Colors.white,
              height: 10.0,
            ),
            DateTimeField(
              format: format,
              onShowPicker: (context, currentValue) {
                return showDatePicker(
                    context: context,
                    firstDate: DateTime.now(),
                    initialDate: currentValue ?? DateTime.now(),
                    lastDate: DateTime(2100));
              },
              decoration: InputDecoration(
                  labelText: 'Fecha Devolucion',
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
                  labelText: 'Valor Seguro',
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
                  labelText: 'Valor Total',
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
