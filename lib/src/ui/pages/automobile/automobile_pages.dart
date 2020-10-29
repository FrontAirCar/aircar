import 'package:aircar/src/bloc/automobile/automobile_bloc.dart';
import 'package:aircar/src/bloc/automobile/automobile_event.dart';
import 'package:aircar/src/bloc/automobile/automobile_state.dart';
import 'package:aircar/src/model/automobile_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(AutomobilePage());
}

class AutomobilePage extends StatefulWidget {
  @override
  _AutomobilePageState createState() => _AutomobilePageState();
}

class _AutomobilePageState extends State<AutomobilePage> {
  AutomobileBloc automobileBloc;

  @override
  void initState() {
    super.initState();
    automobileBloc = BlocProvider.of<AutomobileBloc>(context);
    automobileBloc.add(FetchAutomobileEvent());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return Material(
            child: Scaffold(
              appBar: AppBar(
                title: Text("Automóvil"),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.refresh),
                    onPressed: () {
                      automobileBloc.add(FetchAutomobileEvent());
                    },
                  )
                ],
              ),
              body: Container(
                child: BlocListener<AutomobileBloc, AutomobileState>(
                  listener: (context, state) {
                    if (state is AutomobileErrorState) {
                      Scaffold.of(context).showSnackBar(
                        SnackBar(
                          content: Text(state.message),
                        ),
                      );
                    }
                  },
                  child: BlocBuilder<AutomobileBloc, AutomobileState>(
                    builder: (context, state) {
                      if (state is AutomobileInitialState) {
                        return buildLoading();
                      } else if (state is AutomobileLoadingState) {
                        return buildLoading();
                      } else if (state is AutomobileLoadedState) {
                        return buildAutomobileList(state.automobile);
                      } else if (state is AutomobileErrorState) {
                        return buildErrorUi(state.message);
                      }
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget buildErrorUi(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          message,
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }

  Widget buildAutomobileList(List<Automobile> automobile) {
    return ListView.builder(
      itemCount: automobile.length,
      itemBuilder: (ctx, pos) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            child: ListTile(
              title: Text(automobile[pos].placa),
              subtitle: Text(automobile[pos].descripcion),
            ),
          ),
        );
      },
    );
  }
}
