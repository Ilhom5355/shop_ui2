import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> _multAnimal = [
    'assets/images/cats.jpg',
    'assets/images/dog.jpg',
    'assets/images/horse.jpg',
    'assets/images/rabbit.jpg',
    'assets/images/wolf.jpg',
    'assets/images/mult2.jpg',
    'assets/images/mult4.jpg',
    'assets/images/mult5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          leading: Icon(Icons.menu),
          centerTitle: true,
          title: Text(
            "Apple Products",
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(10),
              child: Container(
                width: 36,
                height: 30,
                decoration: BoxDecoration(
                  color: Colors.amber[800],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text("7"),
                ),
              ),
            ),
          ],
        ),
        backgroundColor: Colors.deepOrangeAccent,
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Container(
                height: 240,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/images/mult2.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(.3),
                        Colors.black.withOpacity(.01),
                      ],
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "LifeStyle sale",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        height: 45,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                          child: Text(
                            "Shop Now",
                            style: TextStyle(color: Colors.grey[900]),
                          ),
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // #body
              Expanded(
                  child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 1,
                children:
                    _multAnimal.map((e) => _multAnimalFuction(e)).toList(),
              ))
            ],
          ),
        ),
      ),
    );
  }

  Widget _multAnimalFuction(String e) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(e), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.favorite, color: Colors.red, size: 35),
          ],
        ),
      ),
    );
  }
}
