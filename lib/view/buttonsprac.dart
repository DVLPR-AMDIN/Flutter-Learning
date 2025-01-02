import 'package:flutter/material.dart';

class Buttonpract extends StatefulWidget {
  const Buttonpract({super.key});

  @override
  State<Buttonpract> createState() => _ButtonpractState();
}

class _ButtonpractState extends State<Buttonpract> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            FilledButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.blueAccent)),
              child: Text(
                "Filled Button",
                style: TextStyle(fontFamily: 'Bold', fontSize: 20),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                      const Color.fromARGB(218, 206, 206, 206))),
              onPressed: () {},
              child: Text(
                "Elevated Button",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
            ),
            SizedBox(
              height: 60,
            ),
            TextButton(
              style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(Colors.greenAccent)),
              onPressed: () {},
              child: Text(
                "Text Button",
                style: TextStyle(fontSize: 20, color: Colors.deepPurple),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text(
                "OutLine Button",
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            SizedBox(
              width: double.infinity,
              child: FilledButton(
                style: FilledButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "New Button",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(16),
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  colors: [Colors.amber, Colors.yellow],
                ),
              ),
              child: Material(
                color: Colors.blueAccent,
                child: InkWell(
                  splashColor: Colors.deepOrange,
                  onTap: () {
                    print("Clicked");
                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Customize Button",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
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
