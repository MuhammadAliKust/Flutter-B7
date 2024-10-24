import 'package:arid_student/models/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  PageController controller = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(title: 'First Slide', image: 'assets/images/1.png'),
    OnBoardingModel(title: 'Second Slide', image: 'assets/images/2.png'),
    OnBoardingModel(title: 'Third Slide', image: 'assets/images/3.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                itemCount: onBoardingList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(onBoardingList[i].image.toString()),
                      Text(onBoardingList[i].title.toString())
                    ],
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}
