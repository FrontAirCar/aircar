import 'package:aircar/src/bloc/automobile/automobile_bloc.dart';
import 'package:aircar/src/repository/automobile_repository.dart';
//import 'package:aircar/src/ui/pages/automobile/automobile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:aircar/src/ui/pages/login/login_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'automóvil',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'Ubuntu'),
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (BuildContext context) =>
            AutomobileBloc(automobileRepository: AutomobileRepository()),
        child: LoginApp(),
      ),
    );
  }
}
