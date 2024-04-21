
import 'package:flutter/material.dart';

import '../../review_screen/review_mainscreen.dart';

class ReviewTextRow extends StatelessWidget {
  const ReviewTextRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ReviewText(),
          ViewAllButton(),
        ],
      ),
    );
  }
}

class ReviewText extends StatelessWidget {
  const ReviewText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Reviews',
          style: TextStyle(
              color: Color(0xff193364),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: 8,
        ),
        Text(
          '(23)',
          style: TextStyle(
              color: Color(0xff193364),
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class ViewAllButton extends StatelessWidget {
  const ViewAllButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (contex) => ReviewScreen()));
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('View all'),
            SizedBox(width: 4),
            Icon(
              Icons.arrow_forward_ios,
              size: 12,
            )
          ],
        ));
  }
}
