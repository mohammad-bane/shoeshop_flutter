
import 'package:flutter/material.dart';


class BannerImage extends StatelessWidget {
  const BannerImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 32, 0, 32),
              height: 230,
              width: double.infinity,
              color: Colors.yellow,
              child: Image.asset(
    'assets/img/1212.jpg',
    fit: BoxFit.fill,
              ),
            ),
            Positioned(
              left: 20,
              bottom: 80,
              child: BannerElevatedButton()
            )
          ],
        );
  }
}



class BannerElevatedButton extends StatelessWidget {
  const BannerElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 163,
      height: 56,
      child: ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll(Color(0xff193364)),
          shape: MaterialStateProperty.all<OutlinedBorder>(
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14))),
        ),
        child: const Text(
          'Shop Now',
          style: TextStyle(color: Color(0xfff5c102), fontSize: 18),
        ),
      ),
    );
  }
}
