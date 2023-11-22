import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:sheerdrivepro/common/size_config.dart';
import 'package:sheerdrivepro/globals.dart';

import '../models/login_user_detail_dto.dart';

class Utilities {
  static Future<String?> getAuthToken() async {
    SharedPreferences sdp = await SharedPreferences.getInstance();
    var token = sdp.getString('authToken');
    if (token != null) {
      return token;
    } else {
      return null;
    }
  }

  static Future<LoginUserDetailDto?> getLoginUserDetails() async {
    SharedPreferences sdp = await SharedPreferences.getInstance();
    var jsonString = sdp.getString('login_details');
    if (jsonString != null) {
      return LoginUserDetailDto.fromJson(json.decode(jsonString));
    } else {
      return null;
    }
  }

  static Future<bool> saveUserIdAndDetails(
      String uid, String phoneNumber, String name) async {
    SharedPreferences sdp = await SharedPreferences.getInstance();
    Map<String, dynamic> userDetails = {
      'uuid': uid,
      'mobileNumber': phoneNumber,
      'name': name,
    };
    return await sdp.setString('user_details', json.encode(userDetails));
  }

  static Future<bool> removeUserIdAndDetails() async {
    SharedPreferences sdp = await SharedPreferences.getInstance();
    return await sdp.remove('user_details');
  }

  static Future<bool> removeAuthToken() async {
    SharedPreferences sdp = await SharedPreferences.getInstance();
    return sdp.remove('authToken');
  }

  static Future<bool> saveLoginUserDetails(
      LoginUserDetailDto userDetail) async {
    SharedPreferences sdp = await SharedPreferences.getInstance();
    return await sdp.setString('login_details', json.encode(userDetail));
  }

  static Future<bool> saveAuthToken(String authToken) async {
    SharedPreferences sdp = await SharedPreferences.getInstance();
    return await sdp.setString('authToken', authToken);
  }

  static Future<Map<String, dynamic>?> getUserIdAndDetails() async {
    SharedPreferences sdp = await SharedPreferences.getInstance();
    var jsonData = sdp.getString('user_details');
    if (jsonData != null) {
      return json.decode(jsonData);
    } else {
      return null;
    }
  }

  static void showSnackBarWithoutKey({
    String? title,
    required String message,
    bool isError = true,
    int durationInSeconds = 3,
  }) {
    bool hideTitle = false;
    if (title == null) {
      hideTitle = true;
    } else {
      if (title.isEmpty) {
        hideTitle = true;
      } else {
        hideTitle = false;
      }
    }
    scaffoldMsgKey.currentState!.showSnackBar(
      // scaffoldKey.currentState.showSnackBar(
      SnackBar(
        duration: Duration(seconds: durationInSeconds),
        behavior: SnackBarBehavior.fixed,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(9),
        ),
        padding: const EdgeInsets.fromLTRB(0.0, 0, 0, 0),
        elevation: 0,
        content: Container(
          constraints: const BoxConstraints(
            maxHeight: 100,
            minHeight: 80,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.horizontal(left: Radius.circular(8)),
            color: Colors.white,
          ),
          clipBehavior: Clip.hardEdge,
          // color: Colors.white,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 12 * SizeConfig.safeAreaTextScalingFactor,
                  color: isError ? Colors.red : Colors.green,
                ),
              ),
              Container(
                width: SizeConfig.screenWidth -
                    18 -
                    (8 * SizeConfig.safeAreaTextScalingFactor),
                padding: EdgeInsets.fromLTRB(
                    (10 * SizeConfig.safeAreaTextScalingFactor + 12),
                    5,
                    6.0,
                    5),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (!hideTitle)
                      Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 4.0),
                        padding: const EdgeInsets.only(bottom: 3.0),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: isError ? Colors.red : Colors.green,
                                width: 1.7),
                          ),
                        ),
                        child: Text(
                          title!,
                          style: TextStyle(
                            color: isError ? Colors.red : Colors.green,
                            fontSize: 17.0,
                            letterSpacing: 1,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    Flexible(
                      child: Container(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(
                          message,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
