import 'package:flutter/material.dart';
import '../descriptions_screen/widgets/reviews_list.dart';
import 'widgets/review_app_bar.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: ReviewAppbar(),
      body: Container(
        child: ListView(
          shrinkWrap: true,
          physics: AlwaysScrollableScrollPhysics(),
          children: [
            ReviewsList(),
          ],
        ),
      ),
    ));
  }
}
