
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget{
  const CustomAppbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: DrawerButton(
        onPressed: () {},
      ),
      actions: [
        badges.Badge(
          badgeContent: Text(
            '\$0',
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
          position: badges.BadgePosition.bottomEnd(end: 25, bottom: 0),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined),
          ),
        )
      ],
    );
  }
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight); // Adjust height as needed
}
