// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  Portfolio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage('assets/overlay.png'),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  colors: [
                    Color(0xFFFBE7DE).withOpacity(0.7),
                    Color(0xFFF8E3DA).withOpacity(0.7),
                  ],
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: 50),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/profile_image.png'),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Cassian',
                    style: TextStyle(
                      fontSize: 32,
                      color: Color(0xFFFF9881),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Programmer",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.location_on,
                      ),
                      SizedBox(width: 8),
                      Text(
                        'Peshawar, Pakistan',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: const [
                          Text("23"),
                          SizedBox(height: 5),
                          Text("Projects"),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "|",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Column(
                        children: const [
                          Text("20"),
                          SizedBox(height: 5),
                          Text("Students"),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "|",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      Column(
                        children: const [
                          Text("100"),
                          SizedBox(height: 5),
                          Text("Clients"),
                        ],
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: LinearGradient(
                          colors: const [
                            Color(0xFFFFC09B),
                            Color(0xFFFF9A82),
                          ],
                        ),
                      ),
                      child: Center(
                        child: Text(
                          'FOLLOW',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.grid_4x4_outlined,
                        color: Color(0xFFFF9A82),
                      ),
                      SizedBox(width: 50),
                      Icon(
                        Icons.screen_lock_rotation,
                        color: Color(0xFFFF9A82),
                      )
                    ],
                  ),
                  SizedBox(height: 10),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                      ),
                      child: GridView(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                        ),
                        children: List.generate(6, (i) {
                          return PostImage(
                            image: 'assets/image${i + 1}.png',
                          );
                        }),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostImage extends StatelessWidget {
  const PostImage({Key? key, required this.image, this.height, this.width})
      : super(key: key);

  final String image;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: height ?? 85,
        width: width ?? 75,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
