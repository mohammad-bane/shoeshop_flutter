import 'package:flutter/material.dart';
import 'package:shoes_store/screens/productdetails_screen/descriptions_screen/widgets/Size_buttons.dart';
import 'descriptions_screen/widgets/Informations_container.dart';
import 'descriptions_screen/widgets/add_to_cart_button.dart';
import 'descriptions_screen/widgets/app_bar.dart';
import 'descriptions_screen/widgets/color_buttons.dart';
import 'descriptions_screen/description_text.dart';
import 'descriptions_screen/widgets/image_slider.dart';
import 'descriptions_screen/widgets/review_text_row.dart';
import 'descriptions_screen/widgets/reviews_list.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: ProductDetailAppbar(),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          ImgSlider(
            controller: _controller,
          ),
          SizedBox(
            height: 8,
          ),
          Divider(
            thickness: 1,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ItemNameText(),
                SizedBox(
                  height: 8,
                ),
                RatingStars(),
                SizedBox(
                  height: 8,
                ),
                PriceText(),
              ],
            ),
          ),
          SizeButtons(),
          ColorToggleButtons(),
          DescriptionsText(),
          AddCartButton(),
          ReviewTextRow(),
          ReviewsList(),

        ],
      ),
    ));
  }
}
