// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'api_hotel_address.g.dart';

@JsonSerializable()
class ApiHotelAddress {
  final String country;
  @JsonKey(name: 'zip_code')
  final int zipCode;
  final ApiHotelCoords coords;
  final String? street, city;

  ApiHotelAddress({
    required this.country,
    required this.zipCode,
    required this.coords,
    this.street,
    this.city,
  });

  factory ApiHotelAddress.fromJson(Map<String, dynamic> json) =>
      _$ApiHotelAddressFromJson(json);

  Map<String, dynamic> toJson() => _$ApiHotelAddressToJson(this);
}

@JsonSerializable()
class ApiHotelCoords {
  final double lat, lan;

  ApiHotelCoords({
    required this.lat,
    required this.lan,
  });

  factory ApiHotelCoords.fromJson(Map<String, dynamic> json) =>
      _$ApiHotelCoordsFromJson(json);

  Map<String, dynamic> toJson() => _$ApiHotelCoordsToJson(this);
}
