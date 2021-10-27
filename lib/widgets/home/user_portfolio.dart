import 'package:flutter/material.dart';
import 'package:portfolio_6pm/widgets/home/post_image.dart';

class UserPortfolio extends StatelessWidget {
  const UserPortfolio({
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
                children: List.generate(6, (i) {
                  return PostImage(
                    image: 'assets/image${i + 1}.png',
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
