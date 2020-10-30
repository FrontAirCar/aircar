import 'dart:convert';
import 'package:aircar/src/model/automobile_model.dart';
//import 'package:aircar/src/res/automobile_res.dart';
import 'dart:async' show Future;
//import 'package:http/http.dart' as http;
import 'package:flutter/services.dart' show rootBundle;

class AutomobileRepository {
  Future<String> _loadAutomobileAsset() async {
    return await rootBundle.loadString('assets/automobile.json');
  }

  Future loadAutomobile() async {
    String jsonAutomobiles = await _loadAutomobileAsset();
    final jsonResponse = json.decode(jsonAutomobiles);
    List<Automobile> automobiles =
        AutomobileList.fromJson(jsonResponse).automobiles;
    return automobiles;
  }

/*
  @override
  Future<List<Automobile>> getAutomobiles() async {
    var response =
        await http.get(AutomobileRes.automobilesUrl + 'vehiculo/all');
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Automobile> automobiles = AutomobileList.fromJson(data).automobiles;
      return automobiles;
    } else {
      throw Exception();
    }
  }*/
}

/*
Future<UserModel> createUser(String identity, String names, String surnames,
    String address, String phone, String email, String password) async {
  final String apiUrl = "https://reqres.in/api/users";
  final response =
      await http.post(apiUrl, body: {"name": identity, "job": names});
  if (response.statusCode == 201) {
    final String msj = response.body;
    print(msj);
  } else {
    return null;
  }
}
*/
