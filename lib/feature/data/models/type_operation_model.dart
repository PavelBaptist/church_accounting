import 'package:church_accounting/feature/data/models/organization_model.dart';
import 'package:church_accounting/feature/domain/entities/enums/type_operation.dart';
import 'package:church_accounting/feature/domain/entities/type_operation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'type_operation_model.g.dart';

@JsonSerializable()
class TypeOperationModel extends TypeOperationEntity {
  @JsonKey(name: 'organization')
  final OrganizationModel organizationModel;

  const TypeOperationModel({
    required super.id,
    required super.name,
    required super.type,
    required this.organizationModel,
  }) : super(organization: organizationModel);

  factory TypeOperationModel.fromJson(Map<String, dynamic> json) =>
      _$TypeOperationModelFromJson(json);

  Map<String, dynamic> toJson() => _$TypeOperationModelToJson(this);
}
