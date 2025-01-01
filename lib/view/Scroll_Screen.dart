import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Listview extends StatelessWidget {
  Listview({super.key});
  List products = [
    {
      'img': "https://m.media-amazon.com/images/I/71d7rfSl0wL._AC_UY218_.jpg",
      'title': "IPhone 12",
      'price': 12545,
      'desc': "Iphone 12 pro max"
    },
    {
      'img': "https://m.media-amazon.com/images/I/71657TiFeHL._AC_UY218_.jpg",
      'title': "IPhone 13",
      'price': 567543,
      'desc': "Iphone 12 pro max"
    },
    {
      'img': "https://m.media-amazon.com/images/I/71v2jVh6nIL._AC_UY218_.jpg",
      'title': "IPhone 14",
      'price': 23462,
      'desc': "Iphone 12 pro max"
    },
    {
      'img': "https://m.media-amazon.com/images/I/71nvkHnPpZL._AC_UY218_.jpg",
      'title': "IPhone 15",
      'price': 89566,
      'desc': "Iphone 12 pro max"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: const Color.fromARGB(255, 255, 248, 216),
        centerTitle: false,
        title: Text(
          "Scorllable Widgets",
          style: TextStyle(fontFamily: 'Bold', fontSize: 30),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Text(
                'Signle Child Scroll View',
                style: TextStyle(fontFamily: 'SemiBold', fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    products.length,
                    (index) => shivom(
                        url: products[index]['img'],
                        title: products[index]['title']),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'List View',
                style: TextStyle(fontFamily: 'SemiBold', fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 130,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(
                    10,
                    (index) => Container(
                      margin: EdgeInsets.only(right: 10),
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 233, 188),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'List View Builder',
                style: TextStyle(fontFamily: 'SemiBold', fontSize: 17),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                    margin: EdgeInsets.only(bottom: 10),
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 188, 252, 255),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Grid View',
                style: TextStyle(fontFamily: 'SemiBold', fontSize: 17),
              ),
              SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 16,
                      mainAxisExtent: 142,
                      crossAxisCount: 2,
                      crossAxisSpacing: 16),
                  children: List.generate(
                    10,
                    (index) => Container(
                      height: 130,
                      width: 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 222, 255, 175),
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Grid View Builder',
                style: TextStyle(fontFamily: 'SemiBold', fontSize: 17),
              ),
              SizedBox(
                height: 10,
                width: double.infinity,
              ),
              Container(
                height: 300,
                width: double.infinity,
                child: GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 16,
                      mainAxisExtent: 142,
                      crossAxisCount: 2,
                      crossAxisSpacing: 16),
                  itemCount: 10,
                  itemBuilder: (contex, index) => Container(
                    height: 130,
                    width: 100,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 127, 183, 250),
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'List View Vertical Builder',
                style: TextStyle(fontFamily: 'SemiBold', fontSize: 17),
              ),
              SizedBox(
                height: 10,
                width: double.infinity,
              ),
              ...List.generate(
                10,
                (index) => Container(
                  margin: EdgeInsets.only(bottom: 10),
                  height: 130,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 178, 133, 239),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container shivom({url, title}) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 130,
      width: 100,
      decoration: BoxDecoration(
        color: Colors.deepOrange[100],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(5),
            child: Image(
              height: 80,
              width: 80,
              image: NetworkImage(url),
            ),
          ),
          SizedBox(
            height: 4,
          ),
          Text(
            title,
            style: TextStyle(fontFamily: 'SemiBold', fontSize: 15),
          ),
        ],
      ),
    );
  }
}
