import 'package:flutter/material.dart';
import 'package:probity/view/List_Screen.dart';
import 'package:probity/view/Scroll_Screen.dart';
import 'package:probity/view/home_screen/home_screen.dart';
import 'package:probity/view/padding.dart';
import 'package:probity/view/stack_screen.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  const Demo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Listview(),
    );
  }
}
