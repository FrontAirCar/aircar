import 'package:aircar/src/bloc/automobile/automobile_bloc.dart';
import 'package:aircar/src/repository/automobile_repository.dart';
import 'package:aircar/src/ui/pages/automobile/automobile_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            AutomobileBloc(repository: AutomobileRepository()),
        child: AutomobilePage(),
      ),
    );
  }
}
