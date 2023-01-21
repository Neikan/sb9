// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/components/app_text.dart';
import 'package:hotels/consts/translations.dart';

class AppErrorData extends StatelessWidget {
  final String text;

  AppErrorData({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppText(
            text: '$errorResponse:',
            color: Colors.green,
            fontSize: 16,
          ),
          AppText(
            text: text,
            padding: EdgeInsets.all(16),
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
