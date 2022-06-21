import 'package:flutter/material.dart';
import 'package:porter/Screens/Home/home.dart';
import 'package:porter/Screens/Platforms/Web.dart';
import 'package:porter/shared/dim.dart';

class Layout extends StatelessWidget {

  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth >websreensize){
            return Webview();
          }else{
            return Home();
          }
        }
        );

  }
}
