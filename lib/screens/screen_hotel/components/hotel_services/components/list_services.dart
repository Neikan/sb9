// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/components/app_text.dart';
import 'package:hotels/styles/text.dart';

class ListServices extends StatelessWidget {
  final String label;
  final List<String> services;

  const ListServices({
    super.key,
    required this.label,
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    if (services.isEmpty) return SizedBox();

    final _labelWidget = Padding(
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(
        label,
        style: getBrandTextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
        ),
      ),
    );

    final _dataWidgets = services
        .map(
          (service) => AppText(
            text: service,
            padding: EdgeInsets.symmetric(vertical: 4.0),
          ),
        )
        .toList();

    return Flexible(
      flex: 1,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 0.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _labelWidget,
            ..._dataWidgets,
          ],
        ),
      ),
    );
  }
}
