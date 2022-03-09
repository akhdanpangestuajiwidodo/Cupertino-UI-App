import 'package:flutter/cupertino.dart';

class FeedsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Feeds Page'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Feeds Page',
              style:
                  CupertinoTheme.of(context).textTheme.navLargeTitleTextStyle,
            ),
            const SizedBox(
              height: 8,
            ),
            CupertinoButton.filled(
                child: const Text('Select Category'), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
