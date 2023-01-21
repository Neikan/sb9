// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Project imports:
import 'package:hotels/styles/text.dart';
import 'package:hotels/utils/common.dart';

class AppHeader extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget? leading;
  final List<Widget>? actions;

  const AppHeader({
    super.key,
    required this.title,
    this.leading,
    this.actions,
  });

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  AppBar build(BuildContext context) {
    final _brightness = getStatusBarBrightness();

    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: _brightness,
        statusBarBrightness: _brightness,
      ),
      backgroundColor: Colors.white,
      title: Text(title, style: headerTextStyles),
      iconTheme: IconThemeData(color: Colors.grey[700]),
      leading: leading,
      actions: actions,
    );
  }
}
