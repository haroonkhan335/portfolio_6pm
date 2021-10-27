import 'package:flutter/material.dart';

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
