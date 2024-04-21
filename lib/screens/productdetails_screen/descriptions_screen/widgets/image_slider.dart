import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductDetailScreenSlider extends StatelessWidget {
  const ProductDetailScreenSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
          height: MediaQuery.of(context).size.height / 3,
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
          height: MediaQuery.of(context).size.height / 2.7,
          child: PageView.builder(
            scrollBehavior: const CupertinoScrollBehavior(),
            controller: _controller,
            itemCount: 3,
            itemBuilder: (context, index) {
              return const ProductDetailScreenSlider();
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
