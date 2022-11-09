


import 'package:flutter/material.dart';
import 'package:porter/Models/Settings.dart';
import 'package:porter/Services/auth.dart';

class ThemeProvider with ChangeNotifier{
  UserThemeData? _userThemeData;
  final AuthService _auth=AuthService();

  UserThemeData get getUserThemeData=>_userThemeData!;

}