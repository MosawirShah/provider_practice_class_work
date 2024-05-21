import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_practice/change_value.dart';
import 'package:provider_practice/provider_practice.dart';

void main(){
  runApp(
      ChangeNotifierProvider(
    create: (_) => ChangeValue(),
      child: MyApp()));
}
class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
 int value = 0;
  @override
  Widget build(BuildContext context) {
    value = value + 1;
    print("Parent Build called $value");
    return MaterialApp(
      home: ProviderPractice(),
    );
  }
}
