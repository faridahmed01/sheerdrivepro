import 'package:json_annotation/json_annotation.dart';

part 'page_api_response_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class PageApiResponseDto {
  String? success;
  String? error;
  bool status;
  PageResponseDto? response;

  PageApiResponseDto({
    required this.status,
    this.success,
    this.response,
    this.error,
  });

  factory PageApiResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PageApiResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PageApiResponseDtoToJson(this);
}

@JsonSerializable(explicitToJson: true)
class PageResponseDto {
  List<dynamic> data;
  int totalCount;

  PageResponseDto({required this.data, required this.totalCount});

  factory PageResponseDto.fromJson(Map<String, dynamic> json) =>
      _$PageResponseDtoFromJson(json);

  Map<String, dynamic> toJson() => _$PageResponseDtoToJson(this);
}
