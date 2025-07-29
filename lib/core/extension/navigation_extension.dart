import 'package:flutter/material.dart';

extension Navigation on BuildContext{

  Future pushNamed(String routeName,{Object? arguments}){
    return Navigator.of(this).pushNamed(routeName,arguments: arguments);
  }

  Future pushReplacementNamed(String routeName){
    return Navigator.of(this).pushReplacementNamed(routeName);
  }

  Future pushNamedAndRemoveUntil(String routeName, RoutePredicate predicate){
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName, predicate);
  }

  void pop() => Navigator.of(this).pop();

}