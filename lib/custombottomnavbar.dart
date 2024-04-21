import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final double iconSize;
  final int selectedIndex;
  final void Function(int) onTap;

  const CustomBottomNavigationBar({
    super.key,
    required this.iconSize,
    required this.selectedIndex,
    required this.onTap,
  });

  static const List<Widget> _navIcons = [
    Icon(Icons.home_outlined),
    Icon(Icons.search),
    Icon(Icons.shopping_bag),
    Icon(Icons.favorite_outline),
    Icon(Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff193364),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int index = 0; index < _navIcons.length; index++)
            IconButton(
              icon: _navIcons[index],
              iconSize: iconSize,
              color: selectedIndex == index ? Colors.amber : Colors.white,
              onPressed: () {
                onTap(index);
              },
            ),
        ],
      ),
    );
  }
}
