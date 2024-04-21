import 'package:flutter/material.dart';

class CategoryElevatedButton extends StatelessWidget {
  const CategoryElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 32),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CategoryButton(
            text: 'Men',
            textColor: Colors.yellow,
            buttonColor: Color(0xFF2D3748),
          ),
          CategoryButton(
            text: 'Women',
            textColor: Colors.black,
            buttonColor: Color(0xffE8EFF4),
          ),
          CategoryButton(
            text: 'Kids',
            textColor: Colors.black,
            buttonColor: Color(0xffE8EFF4),
          ),
        ],
      ),
    );
  }
}


class CategoryButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;

  static const double _width = 115;
  static const double _height = 40;
  static const double _borderRadius = 10;

  CategoryButton({
    required this.text,
    required this.textColor,
    required this.buttonColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _width,
      height: _height,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(buttonColor),
          shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(_borderRadius),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

