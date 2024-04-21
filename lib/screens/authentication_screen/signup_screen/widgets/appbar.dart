import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignupAppbar extends StatelessWidget implements PreferredSizeWidget {
  const SignupAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          CupertinoIcons.back,
        ),
      ),
    );
  }

  @override
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Adjust height as needed
}
