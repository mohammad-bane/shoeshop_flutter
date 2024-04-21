import 'package:flutter/material.dart';
import 'items_container.dart';
import 'widgets/appbarcustum.dart';
import 'widgets/sortdialog.dart';

class BestSellerScreen extends StatelessWidget {
  const BestSellerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomBestSellerAppbar(),
        body: Container(
          child: ListView(
            physics: ClampingScrollPhysics(),
            shrinkWrap: true,
            children: [
              DialogButtonRow(),
              ProductItemsWrap(),
            ],
          ),
        ),
      ),
    );
  }
}
