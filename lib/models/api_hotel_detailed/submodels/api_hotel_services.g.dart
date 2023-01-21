// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_hotel_services.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiHotelServices _$ApiHotelServicesFromJson(Map<String, dynamic> json) =>
    ApiHotelServices(
      free: (json['free'] as List<dynamic>).map((e) => e as String).toList(),
      paid: (json['paid'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApiHotelServicesToJson(ApiHotelServices instance) =>
    <String, dynamic>{
      'free': instance.free,
      'paid': instance.paid,
    };
