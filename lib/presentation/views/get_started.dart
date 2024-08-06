import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  const GetStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 21.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Image.asset(
              'assets/images/get_started.png',
              height: 277,
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Discover Daily News",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff209CEE)),
            ),
            Text(
              "We bring you closer to the news.",
              style: TextStyle(fontSize: 41, fontWeight: FontWeight.w600),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Get Started",
                style: TextStyle(color: Colors.white),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Color(0xff209CEE)),
            )
          ],
        ),
      ),
    );
  }
}
