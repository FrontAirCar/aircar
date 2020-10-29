import 'dart:convert';
import 'package:aircar/src/model/automobile_model.dart';
import 'package:aircar/src/res/automobile_res.dart';
import 'dart:async' show Future;
import 'package:http/http.dart' as http;

class AutomobileRepository {
  @override
  Future<List<Automobile>> getAutomobiles() async {
    var response = await http.get(AutomobileRes.automobilesUrl);
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Automobile> automobiles = AutomobileList.fromJson(data).automobiles;
      return automobiles;
    } else {
      throw Exception();
    }
  }
}
