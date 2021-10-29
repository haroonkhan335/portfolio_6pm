import 'package:flutter/material.dart';
import 'package:portfolio_6pm/widgets/home/post_image.dart';

class UserPortfolio extends StatelessWidget {
  UserPortfolio({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 5, width: 70, color: Colors.black),
            ),
            const Text('Photos'),
            Expanded(
              child: GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                  ),
                  children: photos.map((image) {
                    return PostImage(
                      image: image,
                    );
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }

  List<String> photos = [
    "assets/image1.png",
    "assets/image2.png",
    "assets/image3.png",
    "assets/image4.png",
    "assets/image5.png",
    "assets/image6.png",
  ];
}
