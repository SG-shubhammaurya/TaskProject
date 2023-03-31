import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:taskapplication/util/models/getDetails_modal.dart';

class NetworkCall {
  Future<dynamic> registerApiCall(
      String name, String userName, String password) async {
    Map jsonBody = {"name": name, "login": userName, "password": password};
    String headerUsername = "powerpbox";
    String headerPassword = "powerpbox@0612";
    String basicAuth =
        // ignore: prefer_interpolation_to_compose_strings
        'Basic ' + base64Encode(utf8.encode('$headerUsername:$headerPassword'));

    try {
      String url = "https://mother.powerpbox.org/my_controller/my_post_api";
      final response = await http.post(
        Uri.parse(url),
        body: json.encode(jsonBody),
        headers: {"Authorization": basicAuth},
      );
      if (response.statusCode == 200) {
        var token = json.decode(response.body);
        return token;
      } else {
        return "Error";
      }
    } catch (e) {
      // ignore: avoid_print
      print(e.toString());
    }
    return [];
  }

  Future<dynamic> getDetailsApiCall(
      String token, String userName, String password) async {
    try {
      String url =
          "https://mother.powerpbox.org/mother_odoo14/get_track_trace_events_gh/CBR96545";
      final response = await http.get(Uri.parse(url), headers: {
        "Tnt-Access-Token": token,
        "username": userName,
        "passwd": password,
        "db": "freightbox_mother"
      });
      if (response.statusCode == 200) {
        var respo = json.decode(response.body);
        return GetDetails.fromJson(respo);
      }
    } catch (e) {
      print(e.toString());
    }
    return;
  }
}
