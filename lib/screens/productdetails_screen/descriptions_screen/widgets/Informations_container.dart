import 'package:flutter/material.dart';
import 'package:input_quantity/input_quantity.dart';

// informations under image slider(include: product name, star rating icon, favorite icon, price, quantity button )

class ItemNameText extends StatelessWidget {
  const ItemNameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Flex Fit Training Shoes',
          style: TextStyle(
              color: Color(0xff193364),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        FavoriteIcon()
      ],
    );
  }
}

class FavoriteIcon extends StatelessWidget {
  const FavoriteIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            border:
                Border.all(width: 1, color: Color.fromARGB(255, 216, 219, 221)),
            borderRadius: BorderRadius.circular(22.5)),
        child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border,
              size: 26,
              color: Color(0xff60708e),
            )));
  }
}

class RatingStars extends StatelessWidget {
  const RatingStars({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ...List.generate(
            4,
            (index) =>
                Icon(Icons.star, color: Color(0xfff5c102))), // Generate 3 icons
        Icon(
          Icons.star_border,
          color: Color(0xfff5c102),
        ),
        Text('(23)'),
      ],
    );
  }
}

class PriceText extends StatelessWidget {
  const PriceText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$74.99',
          style: TextStyle(
            fontSize: 22,
            color: Color(0xff193364),
          ),
        ),
        QuantityButton(),
      ],
    );
  }
}

class QuantityButton extends StatelessWidget {
  const QuantityButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InputQty(
      qtyFormProps: QtyFormProps(
          enableTyping: false, style: TextStyle(color: Color(0xff60708e))),
      decoration: QtyDecorationProps(
        plusBtn: Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
          child: Icon(Icons.add),
        ),
        minusBtn: Padding(
          padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
          child: Icon(Icons.remove),
        ),
        width: 14,
        contentPadding: EdgeInsets.symmetric(vertical: 12),
        iconColor: Colors.black,
        btnColor: Colors.black,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(
            width: 1,
            color: Color.fromARGB(255, 216, 219, 221),
          ),
        ),
      ),
      maxVal: double.maxFinite, //max val to go
      initVal: 0, //min starting val
      onQtyChanged: (val) {
        //on value changed we may set the value
        //setstate could be called
      },
    );
  }
}
