import 'package:flutter/material.dart';
import 'package:shoes_store/screens/mainscreen/widgets/bannerimage.dart';
import 'package:shoes_store/screens/mainscreen/widgets/featuredproductslider.dart';
import 'package:shoes_store/screens/mainscreen/widgets/customappbar.dart';
import 'package:shoes_store/screens/mainscreen/widgets/textrowwidgets.dart';
import 'package:shoes_store/screens/mainscreen/widgets/imageslider.dart';
import 'widgets/bestsellerslider.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:  CustomAppbar(),
        body: Container(
            child: ListView(
          shrinkWrap: true,
          children: [
            ImgSlider(controller: _controller),
            BestSellersTextRow(),
            BestSellerSlider(),
            BannerImage(),
            FeauturedProductTextRow(),
            FeaturedProductSlider(),
          ],
        )),
      ),
    );
  }
}