
import 'package:flutter/material.dart';
import 'package:porter/Models/Settings.dart';
import 'package:porter/Services/auth.dart';


//Theme Settings Provider 
class ThemeProvider with ChangeNotifier{
  UserThemeData? _userThemeData;
  final AuthService _auth=AuthService();

  UserThemeData get getUserThemeData=>_userThemeData!;

  Future<void> RefreshTheme()async{
    UserThemeData? userThemeData = await _auth.CurrentUserTheme();
    _userThemeData=userThemeData;
    notifyListeners();
  }
}




