import 'package:flutter/material.dart';
import 'package:probity/view/List_Screen.dart';
import 'package:probity/view/Scroll_Screen.dart';
import 'package:probity/view/Counter1.dart';

import 'package:probity/view/buttonsprac.dart';
import 'package:probity/view/home_screen/home_screen.dart';
import 'package:probity/view/padding.dart';
import 'package:probity/view/selectors.dart';
import 'package:probity/view/stack_screen.dart';

void main() {
  runApp(Demo());
}

class Demo extends StatelessWidget {
  const Demo({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.light(
              primary: const Color.fromARGB(255, 7, 205, 255)),
        ),
        debugShowCheckedModeBanner: false,
        home: Selectors());
  }
}
