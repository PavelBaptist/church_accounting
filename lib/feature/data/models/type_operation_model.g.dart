// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'type_operation_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TypeOperationModel _$TypeOperationModelFromJson(Map<String, dynamic> json) =>
    TypeOperationModel(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$TypeOperationEnumMap, json['type']),
      organizationModel: OrganizationModel.fromJson(
          json['organization'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TypeOperationModelToJson(TypeOperationModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$TypeOperationEnumMap[instance.type]!,
      'organization': instance.organizationModel,
    };

const _$TypeOperationEnumMap = {
  TypeOperation.income: 'income',
  TypeOperation.expense: 'expense',
};
