import 'package:flutter/material.dart';
import 'package:safehome/src/common/styles/common.styles.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Text title;
  final AppBar appBar;

  const CommonAppBar({Key key, this.title, this.appBar}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.home),
      titleSpacing: -10.0,
      title: title,
      backgroundColor: Colors.lightBlue[700],
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.account_circle),
          tooltip: 'Profile',
          iconSize: profile_icon_size,
          onPressed: () {
            //openPage(context);
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
