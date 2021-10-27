import 'package:flutter/material.dart';
import 'package:portfolio_6pm/widgets/home/color_overlay.dart';
import 'package:portfolio_6pm/widgets/home/image_overlay.dart';
import 'package:portfolio_6pm/widgets/home/profile_information.dart';
import 'package:portfolio_6pm/widgets/home/user_portfolio.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const ImageOverlay(),
            const ColorOverlay(),
            Center(
              child: Column(
                children: [
                  const SizedBox(height: 50),
                  const ProfileInformation(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 25.0),
                    child: Container(
                      width: 250,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFFFC09B),
                            Color(0xFFFF9A82),
                          ],
                        ),
                      ),
                      child: const Center(
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
                    children: const [
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
                  const SizedBox(height: 10),
                  const UserPortfolio(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
