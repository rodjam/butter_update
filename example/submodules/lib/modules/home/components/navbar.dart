import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/home_model.dart';
import '../utils/route_converter.dart';

class Navbar extends StatelessWidget {
  final HomeModel? model;
  final String? routeName;

  Navbar({
    this.model,
    this.routeName,
  });

  @override
  Widget build(BuildContext context) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: this.model!.onTapMenuItem,
        currentIndex: RouteConverter.routeToIndex(this.routeName),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("NewsFeed"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.traffic),
            title: Text("Func A"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            title: Text("Func B"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.power),
            title: Text("Logout"),
          ),
        ],
      );
}
