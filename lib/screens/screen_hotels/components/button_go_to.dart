// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/consts/keys.dart';
import 'package:hotels/consts/routes.dart';
import 'package:hotels/consts/translations.dart';
import 'package:hotels/models/api_hotel.dart';
import 'package:hotels/styles/text.dart';

class ButtonGoTo extends StatelessWidget {
  final ApiHotel hotel;
  final bool? isListView;

  ButtonGoTo({
    super.key,
    required this.hotel,
    this.isListView,
  });

  @override
  Widget build(BuildContext context) {
    final _height = isListView == true ? 56.0 : 32.0;

    final _padding = isListView == true
        ? EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 8.0,
          )
        : null;

    final _button = ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 32,
        maxHeight: _height,
      ),
      child: Container(
        padding: _padding,
        child: TextButton(
          child: Text(
            labelButtonGoTo,
            style: getBaseTextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () {
            final _arguments = {keyHotel: hotel};

            Navigator.of(context).pushNamed(
              routeHotel,
              arguments: _arguments,
            );
          },
          style: _getButtonStyle(),
        ),
      ),
    );

    if (isListView == true) return _button;

    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(8.0),
        bottomRight: Radius.circular(8.0),
      ),
      child: _button,
    );
  }

  ButtonStyle _getButtonStyle() {
    return ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.green,
      ),
      overlayColor: MaterialStateProperty.all<Color>(
        Colors.green.shade700,
      ),
      minimumSize: isListView == true
          ? null
          : MaterialStateProperty.all<Size>(
              const Size(double.infinity, 16),
            ),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
        EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 8.0,
        ),
      ),
    );
  }
}
