import 'package:flutter/material.dart';
import 'package:shoes_store/screens/authentication_screen/login_screen/login_mainscreen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class SmoothWormIndicator extends StatelessWidget {
  const SmoothWormIndicator({
    super.key,
    required PageController pageController,
  }) : _pageController = pageController;

  final PageController _pageController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 350,
      left: 20,
      child: SmoothPageIndicator(
        effect: const WormEffect(
          activeDotColor: Color(0xff193364),
          dotColor: Color(0xffE8EFF4),
          dotWidth: 25,
          dotHeight: 8,
        ),
        controller: _pageController,
        count: 3,
      ),
    );
  }
}

class PageviewSlider extends StatefulWidget {
  final PageController pageController;

  PageviewSlider({
    super.key,
    required this.pageController,
  });

  @override
  State<PageviewSlider> createState() => _PageviewSliderState();
}

class _PageviewSliderState extends State<PageviewSlider> {
  final itemData = [
    {
      'maintext': 'Welcom To StebHub!',
      'secondrytext':
          'Step into a world of footwear fashion and comfort with our exclusive shoe collection',
      'imagepath': 'assets/onboard_image/3.png',
    },
    {
      'maintext': 'Explore & Discover',
      'secondrytext':
          'now that we have your preferences, let\'s explore our shoes store paradise',
      'imagepath': 'assets/onboard_image/2.png',
    },
    {
      'maintext': 'Account Setup and engagement',
      'secondrytext': 'Unlock even more perks by creating an account',
      'imagepath': 'assets/onboard_image/1.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: widget.pageController,
      itemCount: itemData.length, // Set the total number of pages
      itemBuilder: (context, index) {
        // Return the page for the given index
        return OnboardItems(
          maintext: itemData[index]['maintext'] as String,
          secondrytext: itemData[index]['secondrytext'] as String,
          imagepath: itemData[index]['imagepath'] as String,
        );
      },
    );
  }
}

class OnboardItems extends StatelessWidget {
  const OnboardItems({
    super.key,
    required this.imagepath,
    required this.maintext,
    required this.secondrytext,
  });

  final String maintext;
  final String secondrytext;
  final String imagepath;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 8, 0, 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            maintext,
            style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
                color: Color(0xff193364)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            secondrytext,
            style: TextStyle(
                fontSize: 24, color: Color.fromARGB(255, 182, 166, 166)),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16, top: 20),
              child: Image.asset(
                // fit: BoxFit.cover,
                imagepath,
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.5,
              ),
            ),
          ),
          GetstartedButton()
        ],
      ),
    );
  }
}

class GetstartedButton extends StatelessWidget {
  const GetstartedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginPage()),
          );
        },
        child: Text(
          'Get Started',
          style: TextStyle(fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff193364),
          foregroundColor: Color.fromARGB(255, 250, 197, 5),
          minimumSize: Size(MediaQuery.of(context).size.width, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // <-- Radius
          ),
        ),
      ),
    );
  }
}
