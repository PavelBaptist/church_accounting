import 'package:church_accounting/feature/data/models/organization_model.dart';
import 'package:church_accounting/feature/domain/entities/enums/type_operation.dart';
import 'package:church_accounting/feature/domain/entities/type_wallet_operation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'type_wallet_operation_model.g.dart';

@JsonSerializable()
class TypeWalletOperationModel extends TypeWalletOperationEntity {
  @JsonKey(name: 'organization')
  final OrganizationModel organizationModel;

  const TypeWalletOperationModel({
    required super.id,
    required super.name,
    required super.type,
    required this.organizationModel,
  }) : super(organization: organizationModel);

  factory TypeWalletOperationModel.fromJson(Map<String, dynamic> json) =>
      _$TypeWalletOperationModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeWalletOperationModelToJson(this);
}
