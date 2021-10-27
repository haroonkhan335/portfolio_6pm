import 'package:flutter/material.dart';

class ProfileInformation extends StatelessWidget {
  const ProfileInformation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Container(
            height: 150,
            width: 150,
            child: const Image(
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
      ],
    );
  }
}
