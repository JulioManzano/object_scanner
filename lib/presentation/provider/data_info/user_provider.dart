import 'package:flutter/material.dart';
import 'package:untitled/domain/models/user.dart';
import 'package:untitled/models/api.graphql.dart';

class UserProvider extends ChangeNotifier {
  User? userProfile;

  get user => userProfile;

  void setUserNN(TokenAuthEmail$Mutation$TokenAuth res) {
    final profile = res.profile!;
    userProfile = User(
      id: profile.id!,
      name: profile.firstName!,
      role: profile.rol!,
    );
  }
}
