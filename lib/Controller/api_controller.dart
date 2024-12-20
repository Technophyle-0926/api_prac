import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider_revision/Model/api_model.dart';
import 'package:http/http.dart' as http;

class ApiController extends ChangeNotifier {
  List<Slogan>? getresponse;
  List<Slogan>? get data => getresponse;
  void getData() async {
    var response = await http.get(Uri.parse(
        "https://mapi.trycatchtech.com/v3/virat_kohli/slogans_list_no_page"));
    if (response.statusCode == 200) {
      getresponse = Slogan.ofSlogans(jsonDecode(response.body));
      notifyListeners();
    }
  }
}
