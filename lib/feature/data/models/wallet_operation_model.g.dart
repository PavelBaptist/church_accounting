// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_operation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletOpertionModel _$WalletOpertionModelFromJson(Map<String, dynamic> json) =>
    WalletOpertionModel(
      id: json['id'] as String,
      number: json['number'] as int,
      date: DateTime.parse(json['date'] as String),
      sum: (json['sum'] as num).toDouble(),
      comment: json['comment'] as String,
      type: $enumDecode(_$TypeOperationEnumMap, json['type']),
      walletModel: WalletModel.fromJson(json['wallet'] as Map<String, dynamic>),
      userModel: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      typeWalletOperationModel: TypeWalletOperationModel.fromJson(
          json['typeOperation'] as Map<String, dynamic>),
      organizationModel: OrganizationModel.fromJson(
          json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WalletOpertionModelToJson(
        WalletOpertionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'number': instance.number,
      'date': instance.date.toIso8601String(),
      'sum': instance.sum,
      'comment': instance.comment,
      'type': _$TypeOperationEnumMap[instance.type]!,
      'wallet': instance.walletModel,
      'user': instance.userModel,
      'typeOperation': instance.typeWalletOperationModel,
      'organization': instance.organizationModel,
    };

const _$TypeOperationEnumMap = {
  TypeOperation.income: 'income',
  TypeOperation.expense: 'expense',
};
