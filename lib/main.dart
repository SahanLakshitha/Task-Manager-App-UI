import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projectapp/screens/home_screen.dart';

void main(List<String> args) {
  runApp(ProjectApp());
}

class ProjectApp extends StatelessWidget {
  const ProjectApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}
