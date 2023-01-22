// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hotels/consts/keys.dart';
import 'package:hotels/consts/routes.dart';
import 'package:hotels/models/api_hotel.dart';
import 'package:hotels/screens/screen_hotel/screen_hotel.dart';
import 'package:hotels/screens/screen_hotels/screen_hotels.dart';
import 'package:hotels/screens/screen_not_found.dart';

Route<dynamic> generateRoute(RouteSettings settings) => MaterialPageRoute(
      settings: settings,
      builder: (BuildContext context) {
        switch (settings.name) {
          case routeHotels:
            return ScreenHotels();

          case routeHotel:
            final _arguments = settings.arguments as Map<String, ApiHotel>;
            final _hotel = _arguments[keyHotel]!;

            return ScreenHotel(hotel: _hotel);

          default:
            return const ScreenNotFound();
        }
      },
    );
