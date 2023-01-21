// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/components/app_header.dart';
import 'package:hotels/consts/translations.dart';

class HeaderHotels extends StatelessWidget implements PreferredSizeWidget {
  final bool? isListView;
  final VoidCallback? onSwitchView;

  HeaderHotels({
    super.key,
    this.isListView,
    this.onSwitchView,
  });

  @override
  Size get preferredSize => Size.fromHeight(56);

  @override
  Widget build(BuildContext context) {
    final _isListView = isListView == true;

    return AppHeader(
      title: labelHotels,
      actions: isListView != null
          ? [
              IconButton(
                icon: Icon(
                  Icons.list_rounded,
                  color: _isListView ? Colors.green : Colors.grey,
                ),
                onPressed: !_isListView ? onSwitchView : null,
              ),
              IconButton(
                icon: Icon(
                  Icons.apps_rounded,
                  color: !_isListView ? Colors.green : Colors.grey,
                ),
                onPressed: _isListView ? onSwitchView : null,
              ),
            ]
          : null,
    );
  }
}
