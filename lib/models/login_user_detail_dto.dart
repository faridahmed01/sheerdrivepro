import 'package:json_annotation/json_annotation.dart';

part 'login_user_detail_dto.g.dart';

@JsonSerializable(explicitToJson: true)
class LoginUserDetailDto {
  String phoneNumber;
  String verificationId;

  LoginUserDetailDto({
    required this.phoneNumber,
    required this.verificationId,
  });

  factory LoginUserDetailDto.fromJson(Map<String, dynamic> json) =>
      _$LoginUserDetailDtoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginUserDetailDtoToJson(this);
}
