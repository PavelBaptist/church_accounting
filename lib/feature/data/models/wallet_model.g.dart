// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => WalletModel(
      id: json['id'] as String,
      name: json['name'] as String,
      balance: (json['balance'] as num).toDouble(),
      isActive: json['isActive'] as bool,
      holderModel: UserModel.fromJson(json['holder'] as Map<String, dynamic>),
      watchersModel: (json['watchers'] as List<dynamic>)
          .map((e) => UserModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      organizationModel: OrganizationModel.fromJson(
          json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletModelToJson(WalletModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'balance': instance.balance,
      'isActive': instance.isActive,
      'holder': instance.holderModel,
      'watchers': instance.watchersModel,
      'organization': instance.organizationModel,
    };
