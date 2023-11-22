// import 'dart:convert';

import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import '../api-service/api_service.dart';
// import '../common/utilities.dart';

class DashboardProvider with ChangeNotifier {
  bool isNotDisposed = true;
  bool loadingData = false;

  DashboardProvider.init() {
    // isNotDisposed = true;

    newfunc();
  }
  void newfunc() {
    notifyListeners();
  }
  // Future<void> getUserDetails() async {
  //   loadingData = true;
  //   notifyListeners();
  //   Map<String, dynamic>? userDetails = await Utilities.getUserIdAndDetails();
  //   if (userDetails == null) {
  //     return;
  //   }

  //   var apiResponse = await http.get(
  //     Uri.parse(
  //         "${APIService.getBkEvaluatorAllDetailsByEvaluatorUid.url}/${userDetails['uid']}"),
  //     headers: await APIService.authHeaders,
  //   );

  //   if (apiResponse.statusCode == 200) {
  //     var evalDetails = json.decode(apiResponse.body);
  //     // evaluatorDetails = EvaluatorDetailsDto.fromJson(evalDetails['response']);
  //     loadingData = false;
  //     notifyListeners();
  //     // if (evaluatorDetails != null) {
  //     //   await Utilities.saveUserIdAndDetails(
  //     //     evaluatorDetails!.evaluatoruid,
  //     //     evaluatorDetails!.phonenumber,
  //     //     evaluatorDetails!.name,
  //     //   );
  //     // }
  //   } else {
  //     loadingData = false;
  //     notifyListeners();
  //   }
  // }
}
