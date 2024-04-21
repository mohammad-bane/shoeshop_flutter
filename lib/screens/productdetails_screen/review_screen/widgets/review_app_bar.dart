import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReviewAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ReviewAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          CupertinoIcons.back,
        ),
      ),
      title: Text('Review'),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Adjust height as needed
}
