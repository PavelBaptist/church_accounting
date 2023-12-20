import 'package:church_accounting/feature/data/models/organization_model.dart';
import 'package:church_accounting/feature/domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends UserEntity {
  @JsonKey(name: 'organization')
  final OrganizationModel organizationModel;

  const UserModel({
    required super.name,
    required super.id,
    required this.organizationModel,
  }) : super(organization: organizationModel);

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
