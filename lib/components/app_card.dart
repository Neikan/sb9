// Flutter imports:
import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Widget widget;

  const AppCard({
    super.key,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      elevation: 10,
      child: ListTile(
        minVerticalPadding: 0.0,
        contentPadding: EdgeInsets.zero,
        title: widget,
      ),
    );
  }
}
