// Package imports:
import 'package:json_annotation/json_annotation.dart';

part 'api_hotel_services.g.dart';

@JsonSerializable()
class ApiHotelServices {
  final List<String> free, paid;

  ApiHotelServices({
    required this.free,
    required this.paid,
  });

  factory ApiHotelServices.fromJson(Map<String, dynamic> json) =>
      _$ApiHotelServicesFromJson(json);

  Map<String, dynamic> toJson() => _$ApiHotelServicesToJson(this);
}
