// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/components/app_header.dart';
import 'package:hotels/components/app_text.dart';
import 'package:hotels/consts/keys.dart';
import 'package:hotels/consts/translations.dart';

class ScreenNotFound extends StatelessWidget {
  const ScreenNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(
        title: labelsNotFound[keyTitle]!,
      ),
      body: SafeArea(
        child: Center(
          child: AppText(
            text: labelsNotFound[keyContent]!,
          ),
        ),
      ),
    );
  }
}
