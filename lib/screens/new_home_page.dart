import 'package:flutter/cupertino.dart';

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
          switch(index){
            case 0:
            return FeedsPage();
            case 1:
              return SearchPage();
            case 2:
              return SettingsPage();
            default:
              return Center(
                child: Text('Page not found!'),
              );
          }
        });
  }
}
