
import 'package:flutter/material.dart';

class AddCartButton extends StatelessWidget {
  const AddCartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: ElevatedButton(
        onPressed: () {},
        child: Text('+ Add To Cart', style: TextStyle(color: Color(0xfff5c102)),),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff193364),
          minimumSize: Size(MediaQuery.of(context).size.width,
              50), // Full width, 50 height
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10), // <-- Radius
          ),
        ),
      ),
    );
  }
}
