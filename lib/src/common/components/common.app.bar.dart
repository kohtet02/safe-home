import 'package:flutter/material.dart';
import 'package:safehome/src/common/styles/common.styles.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({Key key, this.appBar}) : super(key: key);

  final AppBar appBar;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Icon(Icons.home, size: app_bar_icon_size),
      titleSpacing: -3.0,
      title: Text(
        'Safe Home',
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: app_bar_font_size,
        ),
      ),
      backgroundColor: Colors.lightBlue[600],
      actions: [
        Container(
          margin: EdgeInsets.only(right: 10),
          child: CircleAvatar(
            backgroundColor: Colors.grey[700],
            child: IconButton(
              icon: const Icon(Icons.person),
              tooltip: 'Profile',
              onPressed: () {
                //openPage(context);
              },
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(appBar.preferredSize.height);
}
