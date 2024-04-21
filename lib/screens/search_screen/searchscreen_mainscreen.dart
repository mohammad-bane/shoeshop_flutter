import 'package:flutter/material.dart';
import 'package:shoes_store/screens/search_screen/widgets/categorybutton.dart';
import 'package:shoes_store/screens/search_screen/widgets/custom_drawer.dart';
import 'package:shoes_store/screens/search_screen/widgets/searchappbar.dart';

import 'widgets/grid_data_source.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _gridDataSource = GridDataSource();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: CustomSearchAppbar(
          drawerCallback: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        drawer: CustomDrawer(),
        body: Container(
          child: ListView(
            children: [
              CategoryElevatedButton(),
              StaggeredGridViewSlides(gridItems: _gridDataSource.gridItems),
            ],
          ),
        ),
      ),
    );
  }
}
