// Package imports:
import 'package:json_annotation/json_annotation.dart';

// Project imports:
import 'package:hotels/models/api_hotel_detailed/submodels/api_hotel_address.dart';
import 'package:hotels/models/api_hotel_detailed/submodels/api_hotel_services.dart';

part 'api_hotel_detailed.g.dart';

@JsonSerializable()
class ApiHotelDetailed {
  final String uuid, name, poster;
  final ApiHotelAddress address;
  final double price, rating;
  final ApiHotelServices services;
  final List<String> photos;

  ApiHotelDetailed({
    required this.uuid,
    required this.name,
    required this.poster,
    required this.address,
    required this.price,
    required this.rating,
    required this.photos,
    required this.services,
  });

  factory ApiHotelDetailed.fromJson(Map<String, dynamic> json) =>
      _$ApiHotelDetailedFromJson(json);

  Map<String, dynamic> toJson() => _$ApiHotelDetailedToJson(this);
}
