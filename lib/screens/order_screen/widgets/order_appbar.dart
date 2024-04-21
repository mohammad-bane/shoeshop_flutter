import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OrderScreenAppbar extends StatelessWidget implements PreferredSizeWidget {
  const OrderScreenAppbar({
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
      title: Text('Order history'),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Adjust height as needed
}
