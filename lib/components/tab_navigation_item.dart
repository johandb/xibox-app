import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:xibox_app/pages/account_page.dart';
import 'package:xibox_app/pages/myxibox_page.dart';
import 'package:xibox_app/pages/overview_page.dart';
import 'package:xibox_app/utils/constants.dart';

import '../utils/constants.dart';

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
          page: MyXiboxPage(),
          icon: ImageIcon(
            AssetImage('images/icons/my-xibox.png'),
          ),
          title: 'My Xibox',
          color: kBlue,
        ),
        TabNavigationItem(
          page: OverviewPage(),
          icon: Image(
            image: AssetImage('images/icons/xibox.png'),
            width: 24.0,
            height: 24.0,
          ),
          title: 'Overview',
          color: kBlue,
        ),
        TabNavigationItem(
          page: AccountPage(),
          icon: ImageIcon(
            AssetImage('images/icons/account.png'),
          ),
          title: 'Account',
          color: kBlue,
        ),
      ];
}
