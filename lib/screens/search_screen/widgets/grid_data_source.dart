import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridDataSource {
  static final GridDataSource _instance = GridDataSource._internal();

  factory GridDataSource() {
    return _instance;
  }

  GridDataSource._internal();

  List<GridItem> get gridItems => [
        GridItem(text: "Item 1", image: "assets/img/product.jpg"),
        GridItem(text: "Item 2", image: "assets/img/nike.jpg"),
        // ... add more grid items
      ];
}

// each item image and text style
class MyGridItemWidget extends StatelessWidget {
  final GridItem item;

  const MyGridItemWidget({required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      highlightColor: Colors.grey.shade300, // Highlight color when tapped
      hoverColor: Colors.grey,

      child: Container(
        margin: EdgeInsets.all(1),
        child: Stack(
          children: [
            // Image container
            item.image != null
                ? Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(item.image!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  )
                : Container(),
            // Gradient overlay for shadow
            item.image != null
                ? Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xff8595B0).withOpacity(0.40),
                          Color(0xff8595B0).withOpacity(0.40),
                        ],
                      ),
                    ),
                  )
                : Container(),
            // Positioned text on bottom with some padding
            Positioned(
              bottom: 15.0, // Adjust padding as needed
              left: 15,
              child: Text(
                item.text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight:
                      FontWeight.bold, // Add font weight for better visibility
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem {
  // Optional grid item model class
  final String text;
  final String? image; // Image path (optional)

  GridItem({required this.text, this.image});
}

class StaggeredGridViewSlides extends StatelessWidget {
  const StaggeredGridViewSlides({
    super.key,
    required this.gridItems,
  });

  final List<GridItem> gridItems;

  @override
  Widget build(BuildContext context) {
    return StaggeredGrid.count(
      crossAxisCount: 4,
      mainAxisSpacing: 1,
      crossAxisSpacing: 1,
      children: [
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: MyGridItemWidget(item: gridItems[0]),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: MyGridItemWidget(item: gridItems[1]),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 4,
          mainAxisCellCount: 2,
          child: MyGridItemWidget(item: gridItems[1]),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: MyGridItemWidget(item: gridItems[0]),
        ),
        StaggeredGridTile.count(
          crossAxisCellCount: 2,
          mainAxisCellCount: 2,
          child: MyGridItemWidget(item: gridItems[0]),
        ),
      ],
    );
  }
}
