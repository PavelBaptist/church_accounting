import 'package:church_accounting/feature/data/models/user_model.dart';
import 'package:church_accounting/feature/domain/entities/user_avatar.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_avatar_model.g.dart';

@JsonSerializable()
class UserAvatarModel extends UserAvatarEntity {
  @JsonKey(name: 'user')
  final UserModel userModel;

  const UserAvatarModel({
    required this.userModel,
    required super.attachment,
  }) : super(user: userModel);

  factory UserAvatarModel.fromJson(Map<String, dynamic> json) =>
      _$UserAvatarModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserAvatarModelToJson(this);
}
