// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/consts/keys.dart';
import 'package:hotels/models/api_hotel.dart';
import 'package:hotels/screens/screen_hotels/components/grid_hotels/grid_card_hotel.dart';

class GridHotels extends StatelessWidget {
  final List<ApiHotel> hotels;

  const GridHotels({
    super.key,
    required this.hotels,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      key: PageStorageKey(keyHotelsGrid),
      physics: BouncingScrollPhysics(
        parent: AlwaysScrollableScrollPhysics(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.1,
      ),
      itemCount: hotels.length,
      itemBuilder: (_, index) => GridCardHotel(
        hotel: hotels[index],
      ),
    );
  }
}
