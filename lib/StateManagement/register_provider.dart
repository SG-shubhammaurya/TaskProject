import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:taskapplication/Repository/network_call.dart';
import 'package:taskapplication/util/models/getDetails_modal.dart';

class RegistrationProvider extends ChangeNotifier {
  NetworkCall networkCall = NetworkCall();
  String? storeToken;
  String? userNameString;
  String? passwordString;

  //register service call and tokes seperation from response
  registerUser(String name, String userName, String password) async {
    var dataResp = await networkCall.registerApiCall(name, userName, password);
    if (dataResp != null) {
      if (dataResp == "Error") {
        log("Something went Wrong");
      } else {
        String data = dataResp['Message'];
        var token = data.substring(data.length - 40);
        log(token);
        storeToken = token;
        userNameString = userName;
        passwordString = password;
        return token;
      }
    }
  }

  GetDetails? getDetailsData;
  bool loading = true;

  getDetails() async {
    var detailsData = await networkCall.getDetailsApiCall(
        storeToken ?? "", userNameString ?? "", passwordString ?? "");
    if (detailsData != null) {
      getDetailsData = detailsData;
      // ignore: avoid_print
      print(detailsData);
    }
    loading = false;
    notifyListeners();
  }
}
