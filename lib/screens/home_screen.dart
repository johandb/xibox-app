import 'package:flutter/material.dart';
import 'package:xibox_app/components/tab_navigation_item.dart';
import 'package:xibox_app/screens/welcome_screen.dart';
import 'package:xibox_app/utils/constants.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          ImageIcon(
            AssetImage('images/icons/notification.png'),
          ),
        ],
        centerTitle: true,
        //title: Text(TabNavigationItem.items[_currentIndex].title),
        backgroundColor: TabNavigationItem.items[_currentIndex].color,
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    CircleAvatar(
                      child: Image.asset('images/xibox.png'),
                      backgroundColor: Colors.white,
                      radius: 50.0,
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: kBlue,
              ),
            ),
            ListTile(
              title: Text('Logout'),
              leading: Icon(Icons.exit_to_app),
              onTap: () {
                Navigator.popUntil(context, ModalRoute.withName(WelcomeScreen.id));
              },
            ),
            Divider(
              height: 1,
              color: Colors.grey,
            ),
          ],
        ),
      ),
      body: Center(
        child: TabNavigationItem.items.elementAt(_currentIndex).page,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (int index) => setState(() => _currentIndex = index),
        items: [
          for (final tabItem in TabNavigationItem.items)
            BottomNavigationBarItem(
              icon: tabItem.icon,
              label: tabItem.title,
              //backgroundColor: Colors.black,
            )
        ],
      ),
    );
  }
}
