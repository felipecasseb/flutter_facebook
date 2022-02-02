import 'package:flutter/material.dart';
import 'package:flutter_facebook/screens/home.dart';
import 'package:flutter_facebook/uteis/colors_pallet.dart';

void main(){
  runApp(MaterialApp(
    title: "Facebook",
    theme: ThemeData(
      scaffoldBackgroundColor: ColorsPallet.scaffold
    ),
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}
