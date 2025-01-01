import 'package:flutter/material.dart';

class StackScreen extends StatelessWidget {
  const StackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.black,
            ),
            Positioned(
              left: 150,
              child: Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 33, 219, 243),
                child: Center(
                  child: Text('Non-position'),
                ),
              ),
            ),
            Positioned(
              left: 200,
              child: Container(
                height: 200,
                width: 270,
                color: Colors.brown,
                child: Center(
                  child: Text('Aligned'),
                ),
              ),
            ),
            Positioned(
              left: 125,
              top: 90,
              child: Container(
                height: 100,
                width: 100,
                color: const Color.fromARGB(255, 224, 239, 8),
                child: Center(
                  child: Text('Aligned'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
