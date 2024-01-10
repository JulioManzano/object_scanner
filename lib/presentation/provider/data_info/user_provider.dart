import 'package:flutter/material.dart';
import 'package:untitled/domain/models/user.dart';
import 'package:untitled/models/api.graphql.dart';

class UserProvider extends ChangeNotifier {
  User? userProfile;
  UserProvider(){
    userProfile = User(
      id: 1,
      name: "Julio",
      role: "admin",
    );
  }
  User get user => userProfile!;

  void setUserNN(TokenAuth$Mutation$TokenAuth res) {
    final profile = res.profile!;
    userProfile = User(
      id: profile.id!,
      name: profile.firstName!,
      role: profile.role??'',
    );
  }
}
