import 'package:flutter/material.dart';
import 'package:probity/consts/typography.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Hello Shivom"),
        backgroundColor: Colors.cyan,
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 40,
                width: 40,
                color: Colors.amber,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 40,
                width: 40,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 40,
                width: 40,
                color: const Color.fromARGB(255, 33, 243, 226),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                color: Colors.grey,
                width: double.infinity,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.amber,
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Colors.black),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
