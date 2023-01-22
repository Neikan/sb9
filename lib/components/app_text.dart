// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/styles/text.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final EdgeInsetsGeometry? padding;
  final TextAlign? textAlign;
  final bool? withOverflow;

  const AppText({
    super.key,
    required this.text,
    this.color,
    this.fontSize,
    this.padding,
    this.textAlign,
    this.withOverflow,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ??
          EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 0,
          ),
      child: Text(
        text,
        style: getBaseTextStyle(fontSize: fontSize, color: color),
        overflow: withOverflow == true ? TextOverflow.ellipsis : null,
        textAlign: textAlign,
      ),
    );
  }
}
