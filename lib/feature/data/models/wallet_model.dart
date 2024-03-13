import 'package:church_accounting/feature/domain/entities/wallet.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wallet_model.g.dart';

@JsonSerializable()
class WalletModel extends WalletEntity {
  @JsonKey(name: 'holder')
  final String holderModel;
  @JsonKey(name: 'watchers')
  final List<String> watchersModel;
  @JsonKey(name: 'organization')
  final String organizationModel;
  @JsonKey(name: 'is_active')
  final bool isActiveModel;

  const WalletModel({
    required super.id,
    required super.name,
    required super.balance,
    required this.isActiveModel,
    required this.holderModel,
    required this.watchersModel,
    required this.organizationModel,
  }) : super(
          holder: holderModel,
          watchers: watchersModel,
          organization: organizationModel,
          isActive: isActiveModel,
        );

  factory WalletModel.fromJson(Map<String, dynamic> json) =>
      _$WalletModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletModelToJson(this);
}
