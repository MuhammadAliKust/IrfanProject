import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingView extends StatelessWidget {
  OnBoardingView({super.key});

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: 4,
                itemBuilder: (context, i) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      Image.asset(
                        'assets/images/get_started.png',
                        height: 200,
                      ),
                      Text(
                        "First Screen",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: 4,
              effect: ExpandingDotsEffect(
                  dotHeight: 16, dotWidth: 16), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(Icons.email), Text("Continue with Email")],
              )),
          SizedBox(height: 50,),
        ],
      ),
    );
  }
}
