import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xibox_app/pages/OverviewPage.dart';
import 'package:xibox_app/utils/constants.dart';

class TabNavigationItem {
  final Widget page;
  final String title;
  final Widget icon;
  final Color color;

  TabNavigationItem({
    @required this.page,
    @required this.title,
    @required this.icon,
    @required this.color,
  });

  static List<TabNavigationItem> get items => [
        TabNavigationItem(
          page: OverviewPage(),
          icon: Icon(Icons.email),
          title: 'My Xibox',
          color: kBlue,
        ),
        TabNavigationItem(
          page: Container(),
          icon: Icon(Icons.edit),
          title: 'Overview',
          color: Colors.blue,
        ),
        TabNavigationItem(
          page: Container(),
          icon: Icon(Icons.account_balance),
          title: 'Account',
          color: Colors.orange,
        ),
      ];
}
