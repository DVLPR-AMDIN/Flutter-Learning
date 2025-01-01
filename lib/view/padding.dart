import 'package:flutter/material.dart';

class Padding_Screen extends StatelessWidget {
  Padding_Screen({super.key});

  List products = [
    {
      'img': "https://m.media-amazon.com/images/I/71d7rfSl0wL._AC_UY218_.jpg",
      'title': "IPhone 12",
      'price': 12545,
      'desc': "Iphone 12 pro max"
    },
    {
      'img': "https://m.media-amazon.com/images/I/71d7rfSl0wL._AC_UY218_.jpg",
      'title': "IPhone 12",
      'price': 12545,
      'desc': "Iphone 12 pro max"
    },
    {
      'img': "https://m.media-amazon.com/images/I/71d7rfSl0wL._AC_UY218_.jpg",
      'title': "IPhone 12",
      'price': 12545,
      'desc': "Iphone 12 pro max"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent.shade100,
        title: Center(
          child: Text(
            'E-Mart',
            style: TextStyle(
                color: const Color.fromARGB(255, 0, 0, 0),
                fontFamily: 'Bold',
                fontSize: 30),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.only(left: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 16,
              ),
              Text("Products"),
              SizedBox(
                height: 16,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    products.length,
                    (index) => productLIstCard(
                      img: products[index]['img'],
                      title: products[index]['title'],
                      price: products[index]['price'],
                      desc: products[index]['desc'],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container productLIstCard({img, title, desc, price}) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 250,
      decoration: BoxDecoration(
        color: const Color.fromARGB(136, 242, 198, 88),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 150,
              child: Image(
                image: NetworkImage(img),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              child: Text(
                title,
                style: TextStyle(fontSize: 22, fontFamily: 'SemiBold'),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                child: Text(
                  '$price/- RS',
                  style: TextStyle(fontSize: 22, fontFamily: 'Regular'),
                ),
              ),
            ),
            Container(
              child: Text(
                desc,
                style: TextStyle(fontSize: 22, fontFamily: 'Regular'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
