import 'package:flutter/material.dart';

class ColorOverlay extends StatelessWidget {
  const ColorOverlay({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
