// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/consts/urls.dart';

class AppImageAsset extends StatelessWidget {
  final String image;
  final double height;

  const AppImageAsset({
    Key? key,
    required this.image,
    this.height = 75,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(8.0),
        topRight: Radius.circular(8.0),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: height,
        child: Image.asset(
          '$localUrlImage$image',
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
