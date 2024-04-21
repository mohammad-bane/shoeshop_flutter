import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class CustomSearchAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  final VoidCallback drawerCallback; // Add this line

  const CustomSearchAppbar({
    super.key,
    required this.drawerCallback, // Add this line
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: DrawerButton(
        onPressed: drawerCallback,
      ),
      title: SearchField(),
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
  Size get preferredSize =>
      const Size.fromHeight(kToolbarHeight); // Adjust height as needed
}

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Search...',
          prefixIcon: Icon(Icons.search),
          fillColor: Color(0xffE8EFF4),
          filled: true,
          contentPadding: EdgeInsets.symmetric(
              vertical: 12.0, horizontal: 15.0), // Adjust padding
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none)),
    );
  }
}
