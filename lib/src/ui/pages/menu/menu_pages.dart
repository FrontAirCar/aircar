import 'package:flutter/material.dart';

void main() => runApp(Menu());

class Menu extends StatelessWidget {
  final appTitle = 'Cart';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://www.abcrentacar.com.co/images/Renta-de-carros-baratos.jpg"),
                      fit: BoxFit.fill)),
            ),
            ListTile(
              leading:
                  Icon(Icons.account_circle, color: Colors.black, size: 40),
              title: Text(
                'Datos usuario',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                //Redirigir
                Navigator.push(
                  context,
                  // MaterialPageRoute(builder: (context) => UpdateUser()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.commute, color: Colors.black, size: 40),
              title: Text(
                'Registrar vehiculo',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                //Redirigir
                Navigator.push(
                  context,
                  //MaterialPageRoute(builder: (context) => CreateAuto()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.local_offer, color: Colors.black, size: 40),
              title: Text(
                'Ofertas',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                //Redirigir
                Navigator.push(
                  context,
                  //MaterialPageRoute(builder: (context) => OfferData()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.touch_app, color: Colors.black, size: 40),
              title: Text(
                'Reserva',
                style: new TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
              onTap: () {
                //Redirigir
                Navigator.push(
                  context,
                  //MaterialPageRoute(builder: (context) => BookingData()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
