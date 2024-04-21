import 'package:flutter/material.dart';
import 'package:shoes_store/screens/best_seller_screen/bestseller_mainscreen.dart';

class BestSellersTextRow extends StatelessWidget {
  const BestSellersTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Best Sellers',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff193364)),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => BestSellerScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('View all'),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios, size: 12,)
                ],
              )),
        ],
      ),
    );
  }
}


class FeauturedProductTextRow extends StatelessWidget {
  const FeauturedProductTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Featured Products',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff193364)),
          ),
          TextButton(
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('View all'),
                  SizedBox(width: 4),
                  Icon(Icons.arrow_forward_ios, size: 12,)
                ],
              )),
        ],
      ),
    );
  }
}