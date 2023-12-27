// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletModel _$WalletModelFromJson(Map<String, dynamic> json) => WalletModel(
      id: json['id'] as String,
      name: json['name'] as String,
      balance: (json['balance'] as num).toDouble(),
      isActiveModel: json['is_active'] as bool,
      holderModel: json['holder'] as String,
      watchersModel:
          (json['watchers'] as List<dynamic>).map((e) => e as String).toList(),
      organizationModel: json['organization'] as String,
    );

Map<String, dynamic> _$WalletModelToJson(WalletModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'balance': instance.balance,
      'holder': instance.holderModel,
      'watchers': instance.watchersModel,
      'organization': instance.organizationModel,
      'is_active': instance.isActiveModel,
    };
