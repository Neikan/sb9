// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:hotels/components/app_error_data.dart';
import 'package:hotels/components/app_loader.dart';
import 'package:hotels/consts/urls.dart';
import 'package:hotels/models/api_hotel.dart';
import 'package:hotels/screens/screen_hotels/components/header_hotels.dart';
import 'package:hotels/screens/screen_hotels/components/view_hotels.dart';
import 'package:hotels/services/service_http.dart';

class ScreenHotels extends StatelessWidget {
  ScreenHotels({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: ServiceHttp.instance.get(urlHotels),
      builder: (BuildContext _, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            String _message = (snapshot.error as DioError).message;

            return Scaffold(
              appBar: HeaderHotels(),
              body: AppErrorData(text: _message),
            );
          }

          final Response<dynamic> _response = snapshot.data;

          List<ApiHotel> _hotels = List.from(_response.data)
              .map((hotel) => ApiHotel.fromJson(hotel))
              .toList();

          return ViewHotels(hotels: _hotels);
        }

        return Scaffold(
          appBar: HeaderHotels(),
          body: AppLoader(),
        );
      },
    );
  }
}
