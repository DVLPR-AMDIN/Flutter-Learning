import 'package:flutter/material.dart';

class Student {
  String? name;
  int? age;
  String? school;

  Student({this.age, this.name, this.school});
}

class ListScreen extends StatefulWidget {
  ListScreen({super.key});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  TextEditingController searchField = TextEditingController();

  List<Student> students = [
    Student(name: "niraj patil", age: 24, school: "franis"),
    Student(name: "aarav shah", age: 22, school: "greenwood high"),
    Student(name: "ishita mehta", age: 21, school: "springfield academy"),
    Student(name: "rohan gupta", age: 23, school: "sunrise public school"),
    Student(name: "sara khan", age: 20, school: "harmony high"),
    Student(name: "vikram joshi", age: 25, school: "maple leaf international"),
    Student(name: "ananya verma", age: 22, school: "silver oak school"),
    Student(name: "kabir malhotra", age: 23, school: "golden valley academy"),
    Student(name: "priya singh", age: 21, school: "oakwood high"),
    Student(name: "aditya kumar", age: 24, school: "pine crest academy"),
    Student(name: "meera nair", age: 20, school: "crystal heights school"),
    Student(name: "arjun patel", age: 25, school: "horizon international"),
    Student(name: "riya sen", age: 23, school: "starlight high"),
    Student(name: "karan das", age: 24, school: "riverdale high"),
    Student(name: "tanvi rao", age: 22, school: "lakeside academy"),
    Student(name: "siddharth jain", age: 21, school: "evergreen high"),
    Student(name: "neha chawla", age: 23, school: "mountain view school"),
    Student(name: "aman roy", age: 24, school: "bright future academy"),
    Student(name: "sneha iyer", age: 20, school: "summit international school"),
    Student(name: "rahul sharma", age: 22, school: "beacon high"),
  ];

  List<Student> filterdList = [];
  @override
  void initState() {
    // TODO: implement initState
    filterdList = students;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shivom Sayyed Ganesh',
            style: TextStyle(fontFamily: 'Bold', fontSize: 30)),
        backgroundColor: Colors.blue[100],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        // height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            TextField(
              controller: searchField,
              onChanged: (value) {
                filterdList =
                    students.where((e) => e.name!.contains(value)).toList();
                setState(() {});
              },
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: List.generate(
                  filterdList.length,
                  (index) => timepass(
                    filterdList[index],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container timepass(Student student) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(color: Colors.blueAccent),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            student.name!,
            style: TextStyle(fontSize: 30, fontFamily: 'Bold'),
          ),
          Text(
            student.age.toString(),
            style: TextStyle(fontSize: 30, fontFamily: 'Bold'),
          ),
          Text(
            student.school!,
            style: TextStyle(fontSize: 30, fontFamily: 'Bold'),
          ),
        ],
      ),
    );
  }
}
