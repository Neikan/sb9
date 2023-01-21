// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:hotels/components/app_error_data.dart';
import 'package:hotels/components/app_header.dart';
import 'package:hotels/components/app_loader.dart';
import 'package:hotels/models/api_hotel.dart';
import 'package:hotels/models/api_hotel_detailed/api_hotel_detailed.dart';
import 'package:hotels/screens/screen_hotel/components/hotel_address.dart';
import 'package:hotels/screens/screen_hotel/components/hotel_photos.dart';
import 'package:hotels/screens/screen_hotel/components/hotel_services/hotel_services.dart';
import 'package:hotels/services/service_http.dart';

class ScreenHotel extends StatelessWidget {
  final ApiHotel hotel;

  ScreenHotel({
    super.key,
    required this.hotel,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppHeader(title: hotel.name),
      body: FutureBuilder(
        future: ServiceHttp.instance.get(hotel.uuid),
        builder: (BuildContext _, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              String _message = (snapshot.error as DioError).message;

              return AppErrorData(text: _message);
            }

            final Response<dynamic> _response = snapshot.data;

            final ApiHotelDetailed _hotel =
                ApiHotelDetailed.fromJson(_response.data);

            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HotelPhotos(photos: _hotel.photos),
                  HotelAddress(address: _hotel.address),
                  HotelServices(services: _hotel.services),
                ],
              ),
            );
          }

          return AppLoader();
        },
      ),
    );
  }
}
