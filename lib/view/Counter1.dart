import 'package:flutter/material.dart';

class ButtonScreen extends StatefulWidget {
  ButtonScreen({super.key});

  @override
  State<ButtonScreen> createState() => _ButtonScreenState();
}

class _ButtonScreenState extends State<ButtonScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              count.toString(),
              style: TextStyle(fontFamily: 'Regular', fontSize: 100),
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton.filled(
                  color: Colors.black,
                  iconSize: 40,
                  onPressed: () {
                    if (count != 0) {
                      count--;
                      setState(() {});
                      print(count);
                    }
                  },
                  icon: Icon(Icons.remove),
                ),
                SizedBox(
                  width: 50,
                ),
                IconButton.filled(
                  color: Colors.black,
                  iconSize: 40,
                  onPressed: () {
                    if (count != 100) {
                      count++;
                      setState(() {});
                      print(count);
                    }
                  },
                  icon: Icon(Icons.add),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
