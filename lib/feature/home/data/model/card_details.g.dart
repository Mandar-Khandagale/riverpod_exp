// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CardDetails _$$_CardDetailsFromJson(Map<String, dynamic> json) =>
    _$_CardDetails(
      cardNo: json['cardNo'] as String?,
      cardName: json['cardName'] as String?,
      isAccountSelected: json['isAccountSelected'] as bool? ?? false,
    );

Map<String, dynamic> _$$_CardDetailsToJson(_$_CardDetails instance) =>
    <String, dynamic>{
      'cardNo': instance.cardNo,
      'cardName': instance.cardName,
      'isAccountSelected': instance.isAccountSelected,
    };
