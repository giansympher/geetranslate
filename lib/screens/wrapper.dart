import 'package:flutter/material.dart';
import 'package:geetranslate/models/UserModel.dart';
import 'package:geetranslate/screens/authenticate/authenticate.dart';
import 'package:geetranslate/screens/home/home.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserModel>(context);

    print(user);

    //return either Home or Authenticate widget
    if (user == null) {
      return Authenticate();
    } else {
      print(user.uid);
      return Home();
    }
  }
}
