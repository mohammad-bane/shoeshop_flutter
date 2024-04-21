import 'package:flutter/material.dart';
import 'components/widgets.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({
    super.key,
  });

  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /// Background Image for all pages
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/onboard_image/main1.png'))),
          ),
          PageviewSlider(pageController: _pageController),
          SmoothWormIndicator(pageController: _pageController),
        ],
      ),
    );
  }
}

