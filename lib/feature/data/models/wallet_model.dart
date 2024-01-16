import 'package:church_accounting/feature/data/models/organization_model.dart';
import 'package:church_accounting/feature/data/models/user_model.dart';
import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_model.g.dart';

@JsonSerializable()
class WalletModel extends WalletEntity {
  @JsonKey(name: 'holder')
  final UserModel holderModel;
  @JsonKey(name: 'watchers')
  final List<UserModel> watchersModel;
  @JsonKey(name: 'organization')
  final OrganizationModel organizationModel;

  const WalletModel({
    required super.id,
    required super.name,
    required super.balance,
    required super.isActive,
    required this.holderModel,
    required this.watchersModel,
    required this.organizationModel,
  }) : super(
          holder: holderModel,
          watchers: watchersModel,
          organization: organizationModel,
        );

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletModelToJson(this);
}
