import 'package:church_accounting/feature/domain/entities/organization.dart';
import 'package:json_annotation/json_annotation.dart';

part 'organization_model.g.dart';

@JsonSerializable()
class OrganizationModel extends OrganizationEntity {
  const OrganizationModel({
    required super.name,
    required super.id,
  });

  factory OrganizationModel.fromJson(Map<String, dynamic> json) =>
      _$OrganizationModelFromJson(json);

  Map<String, dynamic> toJson() => _$OrganizationModelToJson(this);
}
