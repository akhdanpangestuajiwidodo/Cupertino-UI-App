import 'package:cupertino_ui_app/screens/search_page.dart';
import 'package:cupertino_ui_app/screens/settings_page.dart';
import 'package:flutter/cupertino.dart';

import 'feeds_page.dart';

class NewHomePage extends StatelessWidget {
  const NewHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.news),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.settings),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return FeedsPage();
            case 1:
              return SearchPage();
            case 2:
              return SettingsPage();
            default:
              return const Center(
                child: Text('Page not found!'),
              );
          }
        });
  }
}
