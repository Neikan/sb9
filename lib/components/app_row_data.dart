// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/styles/text.dart';

class AppRowData extends StatelessWidget {
  final String label, value;

  const AppRowData({
    super.key,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: '$label: ',
              style: getBrandTextStyle(fontWeight: FontWeight.w500),
            ),
            TextSpan(
              text: value,
              style: getBaseTextStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
