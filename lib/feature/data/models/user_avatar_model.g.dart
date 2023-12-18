// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_avatar_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserAvatarModel _$UserAvatarModelFromJson(Map<String, dynamic> json) =>
    UserAvatarModel(
      userModel: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      attachment: json['attachment'] as String,
    );

Map<String, dynamic> _$UserAvatarModelToJson(UserAvatarModel instance) =>
    <String, dynamic>{
      'attachment': instance.attachment,
      'user': instance.userModel,
    };
