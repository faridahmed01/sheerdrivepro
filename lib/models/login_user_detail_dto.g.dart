// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_user_detail_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginUserDetailDto _$LoginUserDetailDtoFromJson(Map<String, dynamic> json) =>
    LoginUserDetailDto(
      phoneNumber: json['phoneNumber'] as String,
      verificationId: json['verificationId'] as String,
    );

Map<String, dynamic> _$LoginUserDetailDtoToJson(LoginUserDetailDto instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'verificationId': instance.verificationId,
    };
