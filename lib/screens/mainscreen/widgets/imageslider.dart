import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class ImgSlider extends StatelessWidget {
  const ImgSlider({
    super.key,
    required PageController controller,
  }) : _controller = controller;

  final PageController _controller;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 3,
          child: PageView.builder(
            scrollBehavior: const CupertinoScrollBehavior(),
            controller: _controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const CustomSlider();
            },
          ),
        ),
        Positioned(
          bottom: 10,
          right: MediaQuery.of(context).size.width * .4,
          child: SmoothPageIndicator(
            effect: const WormEffect(
              activeDotColor: Color(0xff193364),
              dotColor: Color(0xffE8EFF4),
              dotWidth: 25,
              dotHeight: 8,
            ),
            controller: _controller,
            count: 3,
          ),
        ),
      ],
    );
  }
}

class CustomSlider extends StatelessWidget {
  const CustomSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
          height: MediaQuery.of(context).size.height / 3.5,
          width: MediaQuery.of(context).size.width,
          child: ClipRRect(
            child: Image.asset(
              'assets/img/welcome.jpg',
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}