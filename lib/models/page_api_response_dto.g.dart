// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_api_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageApiResponseDto _$PageApiResponseDtoFromJson(Map<String, dynamic> json) =>
    PageApiResponseDto(
      status: json['status'] as bool,
      success: json['success'] as String?,
      response: json['response'] == null
          ? null
          : PageResponseDto.fromJson(json['response'] as Map<String, dynamic>),
      error: json['error'] as String?,
    );

Map<String, dynamic> _$PageApiResponseDtoToJson(PageApiResponseDto instance) =>
    <String, dynamic>{
      'success': instance.success,
      'error': instance.error,
      'status': instance.status,
      'response': instance.response?.toJson(),
    };

PageResponseDto _$PageResponseDtoFromJson(Map<String, dynamic> json) =>
    PageResponseDto(
      data: json['data'] as List<dynamic>,
      totalCount: json['totalCount'] as int,
    );

Map<String, dynamic> _$PageResponseDtoToJson(PageResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
      'totalCount': instance.totalCount,
    };
