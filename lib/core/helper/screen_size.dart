import 'package:flutter/material.dart';

abstract class ScreenSize {
  static double h (BuildContext context)=>MediaQuery.of(context).size.height ; 
  static double w (BuildContext context)=>MediaQuery.of(context).size.width ; 
}