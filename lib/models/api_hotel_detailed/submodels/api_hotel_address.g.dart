// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_hotel_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiHotelAddress _$ApiHotelAddressFromJson(Map<String, dynamic> json) =>
    ApiHotelAddress(
      country: json['country'] as String,
      zipCode: json['zip_code'] as int,
      coords: ApiHotelCoords.fromJson(json['coords'] as Map<String, dynamic>),
      street: json['street'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$ApiHotelAddressToJson(ApiHotelAddress instance) =>
    <String, dynamic>{
      'country': instance.country,
      'zip_code': instance.zipCode,
      'coords': instance.coords,
      'street': instance.street,
      'city': instance.city,
    };

ApiHotelCoords _$ApiHotelCoordsFromJson(Map<String, dynamic> json) =>
    ApiHotelCoords(
      lat: (json['lat'] as num).toDouble(),
      lan: (json['lan'] as num).toDouble(),
    );

Map<String, dynamic> _$ApiHotelCoordsToJson(ApiHotelCoords instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lan': instance.lan,
    };
