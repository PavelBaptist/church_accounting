// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      name: json['name'] as String,
      id: json['id'] as String,
      userAvatarModel:
          UserAvatarModel.fromJson(json['imgAvatar'] as Map<String, dynamic>),
      organizationModel: OrganizationModel.fromJson(
          json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'organization': instance.organizationModel,
      'imgAvatar': instance.userAvatarModel,
    };
