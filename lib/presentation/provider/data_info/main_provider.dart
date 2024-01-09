import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:untitled/core/utils/utils.dart';
import 'package:untitled/data/service/auth_service.dart';
import 'package:untitled/models/api.graphql.dart';

class MainProvider extends ChangeNotifier {
  SharedPreferences? _sharedPreferences;

  savePreference(String key, String value) async {
    _sharedPreferences = await SharedPreferences.getInstance();
    _sharedPreferences!.setString(key, value);
    notifyListeners();
  }

  Future<VerifyAccount$Mutation$VerifyAccount?> verifyAccount() async {
    _sharedPreferences ??= await SharedPreferences.getInstance();
    String? token = _sharedPreferences!.getString('token');
    if (token == null) return null;

    var profileToken = await AuthService()
        .verifyAccount(token: token, platform: Utils.getPlatform());

    return profileToken;
  }
}
